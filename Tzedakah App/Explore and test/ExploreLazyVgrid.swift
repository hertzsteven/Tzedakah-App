//
//  ExploreLazyVgrid.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/20/24.
//

import SwiftUI

struct ExploreLazyVgrid: View {

    let images = ["kidwithpot2", "kidscarrybag", "poorperson", "kidwithpot2"]
    var body: some View {
        
//        HStack {
//            Color.clear
//                .frame(width: 12)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 60, maximum: 100))]) {

                ForEach(1..<4) { idx in
                    Image(images[idx])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }.padding()
//        }
    }
}

#Preview {
    ExploreLazyVgrid()
}


