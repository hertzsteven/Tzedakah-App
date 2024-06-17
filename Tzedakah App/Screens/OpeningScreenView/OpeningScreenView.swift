//
//  ContentView.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/5/24.
//

import SwiftUI

struct OpeningScreenView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                OpeningScreenHeaderView()
                OpeningScreenCampaingsHeader()
                CharityCampaintileView()
            }
            .padding([.leading, .trailing])
            Spacer()
            
            .navigationBarTitleDisplayMode(.inline)
            
            .configureToolbar()  // calling the mofifier  .modifier(ToolbarModifier())

            .toolbar {
                doToolbarPrincipal()
            }
        }
    }
}

//  MARK: -  funcs that build parts of the screen
extension OpeningScreenView {
    
    fileprivate func OpeningScreenHeaderView() -> some View {
        return Group {
            Text("Hello Charity Giver")
                .font(.system(size: 28, weight: .bold))
                .padding(.top, 30)
            
            Text("With just $0.90 you can share the meal")
                .font(.callout)
                .foregroundStyle(.gray)
        }
        
    }
    
    fileprivate func OpeningScreenCampaingsHeader() -> some View {
        return HStack {
            
            Text("Featured Goals")
                .bold()
            
            Text("3")
                .foregroundStyle(.gray)
                .padding(6)
                .background(Color(.systemGray6))
                .clipShape(Circle())
            
            Spacer()
            
            Button /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ label: {
                Text("See all")
                    .font(.callout)
            }
            
        }
        .padding(.top, 30)
    }
    
}

//  MARK: -  funcs that build tool bar
extension OpeningScreenView {
    @ToolbarContentBuilder
    func doToolbarPrincipal() -> some ToolbarContent {
        ToolbarItem(placement: .principal) {
            HStack {
                Image(systemName: "cup.and.saucer.fill")
                Text("Great Charity")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 18, weight: .bold))
            }
        }
    }
}

//  MARK: -  funcs that build modifiers
struct ToolbarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toolbarBackground(
                .navBar,
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

extension View {
    func configureToolbar() -> some View {
        modifier(ToolbarModifier())
    }
}




#Preview {
    OpeningScreenView()
}
