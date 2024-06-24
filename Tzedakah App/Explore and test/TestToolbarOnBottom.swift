//
//  TestToolbarOnBottom.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/23/24.
//

import SwiftUI

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                VStack {
//                    ForEach(0..<100) { index in
//                        Text("Item \(index)")
//                            .padding()
//                            .background(Color.gray.opacity(0.2))
//                            .cornerRadius(10)
//                            .padding(.horizontal)
//                    }
//                }
//            }
//            .navigationTitle("Scroll View")
//            .toolbar(.hidden, for: .tabBar)
//            .toolbar {
//                ToolbarItem(placement: .bottomBar) {
//                    HStack {
//
//                        Spacer()
//                        Button(action: {
//                            // Your button action here
//                        }) {
//                            Text("Action")
//                                .foregroundColor(.white)
//                                .padding()
//                                .background(Color.blue)
//                                .cornerRadius(10)
//                        }
//                        .frame(maxWidth: .infinity)
//                                            .padding(.horizontal)
//                        Spacer()
//
//                    }
//                }
//            }
//        }
//    }
//}
//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Button(action: {
                        // Your button action here
                    }) {
                        Text("Action")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }

                    ForEach(0..<100) { index in
                        Text("Item \(index)")
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Scroll View")
            .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            Button(action: {
                                // Your button action here
                            }) {
                                Text("Action")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.white)
                                    .padding()
                                   
                                    .background(Color.blue.opacity(0.5))
                                    .cornerRadius(10)
                            }
                            .buttonStyle(.borderedProminent)
                            .padding()
                        }
            }
            
        }
    }
}

//struct OtherView2: View {
//    var body: some View {
//        Text("Other View")
//            .font(.largeTitle)
//    }
//}
//
//struct TabBarView: View {
//    var body: some View {
//        TabView {
//            ContentView()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                }
//            
//            OtherView()
//                .tabItem {
//                    Label("Other", systemImage: "star")
//                }
//        }
//    }
//}
//
//struct TabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView()
//    }
//}
