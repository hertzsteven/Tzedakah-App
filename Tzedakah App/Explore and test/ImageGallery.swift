//
//  ImageGallery.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/18/24.
//

import SwiftUI

struct ImageGallery: View {
    @State private var selectedTb = 0
    
    let images = ["kidwithpot2", "kidscarrybag", "poorperson", "maneating", "ladysleeping", "kidwithpot2", "kidscarrybag", "poorperson"]
    
    var body: some View {
        VStack {
            
            headerBlue()
            
            tabViewWithImage()
            
            thumbsLazyGrid()
            
            Spacer()
        }
    }
}


// top Level Views
extension ImageGallery {

    fileprivate func headerBlue() -> some View {
        Color.blue.opacity(0.4)
            .containerRelativeFrame(.vertical, alignment: .center) { lnth, _ in
                lnth / 2.5
            }
    }
    
    fileprivate func tabViewWithImage() -> some View {
        TabView(selection: $selectedTb) {
            
            ForEach(0..<images.count) { idx in
                imageViewForTabs4(Image(images[idx]))
            }
        }
        .tabViewStyle(.page)
    }
    
    fileprivate func thumbsLazyGrid() -> some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 60, maximum: 100))]) {
            
            ForEach(0..<images.count) { idx in
                Button {
                    selectedTb = idx
                } label: {
                    imageViewForThumbnails(Image(images[idx]),
                                           idx: idx,
                                           selectedTb: selectedTb)
                    .tag(idx)
                }
            }
        }
        .padding(.horizontal)
    }
}

// lower level views
extension ImageGallery {

    fileprivate func imageViewForTabs4(_ image: Image) -> some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .containerRelativeFrame(.horizontal) { len, _ in len/1.1 }
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .padding()
    }
    
    
    func imageViewForThumbnails(_ image: Image,
                                idx: Int,
                                selectedTb: Int) -> some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(selectedTb == idx ?
                            Color.red.opacity(0.7) :
                                Color.clear, lineWidth: 4)
            )
    }
    
}

#Preview {
    ImageGallery()
}
