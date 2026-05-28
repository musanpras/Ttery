//
//  EnergyToggle.swift
//  Team17Project
//
//  Created by Muhammad Sandy Prastyo on 26/05/26.
//

import SwiftUI

struct EnergyToggle: View {
    @State private var selection = "draining"

    let options = ["draining", "energizing"]

    var body: some View {
        Picker("", selection: $selection) {
            ForEach(options, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
        }
        .pickerStyle(.segmented)
        .padding()
    }
}

#Preview {
    EnergyToggle()
}
