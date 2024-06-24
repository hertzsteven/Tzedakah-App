//
//  UsingZstackbottombutton.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/23/24.
//

import SwiftUI


import SwiftUI

struct UsingZstackbottombutton: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    ForEach(0..<100) { index in
                        Text("Item \(index)")
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                }
            }
            
            HStack {
                Button(action: {
                    // Your button action here
                }) {
                    Text("Action")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 12)
                }
            }
            .padding()
            .background(Color(UIColor.systemBackground).shadow(radius: 2))
            .frame(maxWidth: .infinity)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct UsingZstackbottombutton_Previews: PreviewProvider {
    static var previews: some View {
        UsingZstackbottombutton()
    }
}
