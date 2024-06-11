//
//  CharityCampaintileView.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/10/24.
//

import SwiftUI

struct CharityCampaign: Identifiable {
    var id: Int
    var name: String
    var description: String
    var tags: [String]
    var imageName: String
}




struct CharityCampaintileView: View {
    let charityCampaigns = [
        CharityCampaign(id: 0, name: "Aid To Poor", description: "Providing aid to those in need.", tags: ["conflict", "emergency"], imageName: "kidscarrybag"),
        CharityCampaign(id: 1, name: "Feeding Children", description: "Helping feed hungry children.", tags: ["nutrition", "support"], imageName: "kidwithpot2"),
        CharityCampaign(id: 2, name: "Shelter for Women", description: "Providing shelter to homeless women.", tags: ["shelter", "women"], imageName: "ladysleeping"),
        CharityCampaign(id: 3, name: "Feeding the Hungry", description: "Distributing food to the needy.", tags: ["food", "aid"], imageName: "maneating"),
        CharityCampaign(id: 4, name: "Helping the Poor", description: "Assisting poor individuals.", tags: ["poverty", "help"], imageName: "poorperson")
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing:16) {
                ForEach(charityCampaigns) { item in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.white) // Use fill instead of stroke
                        .frame(width: 300, height: 400)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 15) // Adding shadow here
                        .overlay {
                            VStack {
                                Image(item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 250)
                                    .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 25, topTrailing: 25)))
                                    .overlay(alignment: .bottom) {
                                        Text(item.name)
                                            .font(.system(size: 28, weight: .semibold))
                                            .foregroundStyle(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .bottomLeading)
                                    }

                                HStack {
                                    Text("conflict")
                                        .padding(.horizontal,8)
                                        
                                        .background(Color(.systemGray6))
                                        .clipShape(Capsule())
                                        .padding(.leading,12)
                                       
                                    Text("Emergency")
                                        .padding(.horizontal,8)
                                        .background(Color(.systemGray6))
                                        .clipShape(Capsule())

                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundStyle(.gray)
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Donate Now")
                                })
                                .font(.callout)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.donateButton)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                                .padding()
                              
                            }
                        }
                }
            }
            .frame( height: 430, alignment: .top)
        }

    }
}

#Preview {
    CharityCampaintileView()
}