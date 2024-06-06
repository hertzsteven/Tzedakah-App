//
//  ContentView.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/5/24.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundStyle(.tint)
//                Text("Hello, world!")
//            }
//            .navigationTitle("Geat Charity")
//            .padding()
//            
//            .toolbarBackground(Color.blue, for: .navigationBar)
//        }
//    }
//}


struct ContentView: View {
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
    }
    var body: some View {
        NavigationStack {
            List {
                Text("Hello, SwiftUI!")
            }
//            .navigationTitle("Navigation Title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(
                .navBar,
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    Text("XX")
                        .foregroundStyle(Color.white)
                }
            })

        }
    }
}

#Preview {
    ContentView()
}
