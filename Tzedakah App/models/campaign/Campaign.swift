//
//  Campaign.swift
//  Tzedakah App
//
//  Created by Steven Hertz on 6/24/24.
//

import SwiftUI

struct Campaign: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageURL: URL
    let description: String
    let tags: Array<String>
    let campaignImage: Image
    static func == (lhs: Campaign, rhs: Campaign) -> Bool {
        return lhs.id == rhs.id &&
               lhs.name == rhs.name &&
               lhs.imageURL == rhs.imageURL &&
               lhs.description == rhs.description &&
               lhs.tags == rhs.tags &&
               lhs.campaignImage == rhs.campaignImage
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(imageURL)
        hasher.combine(description)
        hasher.combine(tags)
        // Note: Image does not conform to Hashable, so we cannot hash it directly
        // hasher.combine(campaignImage)
    }
}


class CampaignVM: ObservableObject {
    @Published var charities: [Campaign] = []

    init() {
        loadCampaignData()
    }

    func loadCampaignData() {
        // Simulate data loading from an external source
        DispatchQueue.global().async {
            // Replace this with your actual data loading logic
            let dummyData = [
                Campaign(name: "Aid To Poor", 
                         imageURL: URL(string: "https://example.com/image1.jpg")! ,
                         description: "Providing aid to those in need.",
                         tags: ["hunger", "work"],
                         campaignImage: Image(.kidscarrybag)),
                Campaign(name: "Feeding Children", 
                         imageURL: URL(string: "https://example.com/image2.jpg")! ,
                         description: "Helping feed hungry children.",
                         tags: ["hunger", "work"],
                         campaignImage: Image(.kidwithpot2)),
                Campaign(name: "Shelter for Women",
                         imageURL: URL(string: "https://example.com/image3.jpg")! ,
                         description: "Providing shelter to homeless women",
                         tags: ["hunger", "work"],
                         campaignImage: Image(.ladysleeping)),
                Campaign(name: "Feeding the Hungry", 
                         imageURL: URL(string: "https://example.com/image4.jpg")! ,
                         description: "Distributing food to the needy",
                         tags: ["hunger", "work"],
                         campaignImage: Image(.maneating)),
                Campaign(name: "Helping the Poor",
                         imageURL: URL(string: "https://example.com/image5.jpg")! ,
                         description: "Assisting poor individuals.",
                         tags: ["hunger", "work"],
                         campaignImage: Image(.poorperson))
            ]
            // Simulate a delay
            sleep(2)
            DispatchQueue.main.async {
                self.charities = dummyData
            }
        }
    }
}



