//
//  TabWithBottomButton.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/23/24.
//

import SwiftUI



struct OtherView: View {
    var body: some View {
        Text("Other View")
            .font(.largeTitle)
    }
}

struct TabWithBottomButton: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            OtherView()
                .tabItem {
                    Label("Other", systemImage: "star")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabWithBottomButton()
    }
}

//
//struct TabWithBottomButton: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    TabWithBottomButton()
//}
