//
//  Tzedakah_AppApp.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/5/24.
//

import SwiftUI

@main
struct Tzedakah_AppApp: App {
    init() {
     // Large Navigation Title
     UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.purple]
     // Inline Navigation Title
     UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.purple]
   }

    var body: some Scene {
        WindowGroup {
            TabMasterView()
        }
    }
}
