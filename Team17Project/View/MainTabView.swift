//
//  TabView.swift
//  Team17Project
//
//  Created by ROONEY on 26/05/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            MarketView()
                .tabItem {
                    Label("Market", systemImage: "storefront")
                }
        }
    }
}

#Preview {
    MainTabView()
}
