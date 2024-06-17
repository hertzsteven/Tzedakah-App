//
//  explore list.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/10/24.
//

import SwiftUI

struct explore_list: View {
    var body: some View {
        List {
            Group{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }.listRowSeparator(.hidden)
        }
        .listStyle(.inset)
        .backgroundStyle(.thinMaterial)
        .listRowBackground (Color.clear)
    }
}

#Preview {
    explore_list()
}
