//
//  DailyStateService.swift
//  Team17Project
//

import Foundation
import SwiftData

struct DailyStateService {
    let modelContext: ModelContext
    private let settingsPreferences = SettingsPreferences()

    @discardableResult
    func ensureExists(in states: [DailyState]) -> DailyState? {
        if let state = states.first {
            settingsPreferences.sync(state)
            normalizeReminderSettings(state)
            refreshForNewDayIfNeeded(state)
            save()
            return state
        }

        let state = DailyState()
        settingsPreferences.sync(state)
        normalizeReminderSettings(state)
        modelContext.insert(state)
        save()
        return state
    }

    /// Keeps the displayed cadence and the cadence used by notifications in sync.
    /// This also repairs state created by older app versions where these values
    /// could drift apart.
    private func normalizeReminderSettings(_ state: DailyState) {
        let validHours = min(max(state.reminderHours, 1), 3)
        state.reminderHours = validHours
        state.reminderIntervalMinutes = validHours * 60

        state.reminderStartMinute = min(max(state.reminderStartMinute, 0), 23 * 60 + 59)
        state.reminderEndMinute = min(max(state.reminderEndMinute, 1), 23 * 60 + 59)

        if state.reminderStartMinute >= state.reminderEndMinute {
            state.reminderStartMinute = DailyState.defaultReminderStartMinute
            state.reminderEndMinute = DailyState.defaultReminderEndMinute
        }
    }

    func refreshForNewDayIfNeeded(_ state: DailyState) {
        guard state.resetsEnergyDaily else { return }

        let calendar = Calendar.current
        guard !calendar.isDateInToday(state.lastUpdated) else { return }

        state.currentEnergy = state.maxEnergy
        state.lastUpdated = .now
        save()
    }

    func setResetsEnergyDaily(_ enabled: Bool, for state: DailyState) {
        settingsPreferences.setResetsEnergyDaily(enabled)
        state.resetsEnergyDaily = enabled
        if enabled {
            refreshForNewDayIfNeeded(state)
        }
        save()
    }

    @discardableResult
    func save() -> Bool {
        do {
            try modelContext.save()
            return true
        } catch {
            assertionFailure("Failed to save DailyState: \(error)")
            return false
        }
    }
}
