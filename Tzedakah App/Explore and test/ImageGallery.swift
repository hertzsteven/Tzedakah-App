//
//  ImageGallery.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/18/24.
//

import SwiftUI

struct ImageGallery: View {
    @State private var selectedTb = 0
    let images = ["kidwithpot2", "kidscarrybag", "poorperson", "kidwithpot2", "kidscarrybag", "poorperson"]
    var body: some View {
        VStack {
            Color.blue.opacity(0.4)
                .containerRelativeFrame(.vertical, alignment: .center) { lnth, _ in
                    lnth / 2.5
                }
            TabView(selection: $selectedTb) {
                
                ForEach(0..<images.count) { idx in
                    Image(images[idx])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .containerRelativeFrame(.horizontal) { len, _ in len/1.1 }
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .padding()
                        .tag(idx)

                }
            }
            .tabViewStyle(.page)
//            .indexViewStyle(.page(backgroundDisplayMode: .always))

            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 60, maximum: 100))]) {

                ForEach(0..<images.count) { idx in
                    Button {
                        selectedTb = idx
                    } label: {
                        Image(images[idx])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(selectedTb  == idx ? Color.red.opacity(0.7) : Color.clear, lineWidth: 4)
                            )
                    }
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    ImageGallery()
}
