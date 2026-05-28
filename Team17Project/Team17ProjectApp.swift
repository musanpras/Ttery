//
//  Team17ProjectApp.swift
//  Team17Project
//
//  Created by Muhammad Sandy Prastyo on 22/05/26.
//

import SwiftData
import SwiftUI

@main
struct Team17ProjectApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            DailyState.self,
            TaskItem.self,
        ])
        let modelConfiguration = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false
        )

        do {
            return try ModelContainer(
                for: schema,
                configurations: [modelConfiguration]
            )
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
        .modelContainer(sharedModelContainer)
    }
}

