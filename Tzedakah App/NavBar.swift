//
//  NavBar.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/5/24.
//

import SwiftUI

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: UIColor?
    
    init(backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = backgroundColor
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
}

struct NavContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, SwiftUI!")
                    .navigationBarTitle("Home", displayMode: .inline)
            }
            .navigationBarColor(UIColor.systemBlue)
            .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_PreviewsNav: PreviewProvider {
    static var previews: some View {
        NavContentView()
    }
}
