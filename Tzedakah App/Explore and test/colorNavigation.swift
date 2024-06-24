//
//  colorNavigation.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/23/24.
//

import SwiftUI

struct ExampleView: View {
      var body: some View {
          NavigationStack {
              List(0..<100) { idx in
                  Text("Row \(idx)")
              }
              .toolbar {
                  Button {
                      
                  } label: {
                      Label("Share", systemImage: "square.and.arrow.up")
                  }
              }
              .navigationTitle("Nav Title")
              #if os(iOS)
              .toolbarBackground(.red, for: .navigationBar)
              .toolbarBackground(.hidden, for: .navigationBar)
              .toolbarColorScheme(.dark, for: .navigationBar)
              #else
              .toolbarBackground(.red, for: .windowToolbar)
              .toolbarBackground(.visible, for: .windowToolbar)
              .toolbarColorScheme(.dark, for: .windowToolbar)
              #endif
          }
      }
  }

#Preview {
    ExampleView()
}
