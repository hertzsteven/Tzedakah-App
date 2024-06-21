//
//  CampaignDetailScreenView.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/11/24.
//

import SwiftUI

struct CampaignDetailScreenView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var charityCampaign: CharityCampaign
    
    
    var body: some View {
        ScrollView {

            VStack(alignment: .leading) {
                
                headerWithImage()

                tagsSection()
                
                statisticsSection()
                
                updatesSection()
                
                overViewSection()
                
                donateButton()
            }
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .heavy))
//                            Text("Custom Back")
                        }
                    }
                }
            }
            }

        .edgesIgnoringSafeArea(.top)
    }
}

extension CampaignDetailScreenView {
    fileprivate func headerWithImage() -> some View {
         // Image Section
        return ZStack(alignment: .topLeading) {
            Image(charityCampaign.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:400, height: 300)
                .clipped()
                .overlay(alignment: .bottom) {
                    Text(charityCampaign.name)
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                }
//            HStack {
//                Image(systemName: "chevron.left")
//                    .padding()
//                Spacer()
//                HStack(spacing: 10) {
//                    Image(systemName: "wifi")
//                    Image(systemName: "battery.100")
//                }
//                .padding()
//            }
//            .foregroundColor(.white)
        }
    }
    
    fileprivate func tagsSection() -> some View {
         // Tags Section
        return HStack {
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
        .padding([.top ])
    }
    
    fileprivate func statisticsSection() -> some View {
         // Statistics Section
        return HStack {
            VStack(alignment: .leading) {
                Text("Meals shared")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.bottom,8)
                Text("23,056,475")
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            
            Spacer()
            VStack(alignment: .leading) {
                Text("Latest donation")
                    .font(.system(size: 14))
                    .foregroundStyle(.gray)
                    .padding(.bottom,8)
                HStack {
                    Text("$6.00")
                        .font(.subheadline)
                    Image(systemName: "flag")
                }
                .font(.title3)
                .fontWeight(.medium)
            }
        }
        .padding([.leading, .trailing, .top])
    }
    
    fileprivate func updatesSection() -> some View {
         // Updates Section
        return VStack(alignment: .leading) {
            HStack {
                Text("6/3/24")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                Spacer()
                Text("Updates")
                    .foregroundColor(.blue)
                    .font(.system(size: 14))
            }
            .padding([.leading, .trailing])
            .padding([.top])
            .cornerRadius(10)
            
            Text("WFP is continuing to deliver food parcels, flour and hot meals in the north. In central areas, hot meals are being prioritized to reach more people with few resources. In the south, including Rafah, we have newly arrived stocks of aid and hope to being distributions soon.")
                .font(.system(size: 14))
                .padding([.leading, .trailing])
                .padding([.top, .bottom], 8)
        }
        .background(Color.yellow.opacity(0.2))
        .padding([.leading, .trailing])
    }
    
    fileprivate func overViewSection() -> some View {
         // Overview Section
        return VStack(alignment: .leading) {
            Text("Overview")
                .font(.headline)
                .padding(.bottom, 5)
            Text("Shared meals will provide emergency food assistance to families in Palestine.")
            Text("With conflict escalating in October 2023, Palestine is facing an urgent humanitarian crisis. 1.8 million people are now food insecure, many of whom have lost their homes and are seeking safety in shelters....")
                .fontColorSizePadEnum(textStyleModifierType: .light)
                
//                .foregroundStyle(.gray)
//                .font(.system(size: 14))
                .padding(.top, 8)
        }
        .padding([.leading, .trailing, .top])
    }
    
    fileprivate func donateButton() -> some View {
         // Donate Button
        return Button(action: {
                // Action for donate
        }) {
            Text("Donate now")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    CampaignDetailScreenView(charityCampaign: CharityCampaign(id: 0, name: "Aid To Poor", description: "Providing aid to those in need.", tags: ["conflict", "emergency"], imageName: "kidscarrybag"))
}
