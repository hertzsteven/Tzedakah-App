//
//  TabMasterView.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/10/24.
//

import SwiftUI

struct TabMasterView: View {
    @State private var selectedTab = 1
    var body: some View {
            // Creates a tab bar
        TabView(selection: $selectedTab) {
            
                // 1st tab
            OpeningScreenView()
//            Text("Hello \(selectedTab)")
//            TabBarDetailOne(selectedTab: $selectedTab)
                .tabItem{ Label("Home", systemImage :"house") }
                .tag(1)
                // 1st tab
            Text("Hello  \(selectedTab)")
//            TabBarDetailOne(selectedTab: $selectedTab)
                .tabItem{ Label("Donate", systemImage :"heart") }
                .tag(1)
                // 1st tab
            Text("Hello  \(selectedTab)")
//            TabBarDetailOne(selectedTab: $selectedTab)
                .tabItem{ Label("You", systemImage :"person") }
                .tag(1)
        }
    }
}

#Preview {
    TabMasterView()
}
