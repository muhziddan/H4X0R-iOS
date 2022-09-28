//
//  PostModel.swift
//  H4X0R News
//
//  Created by Muhammad Ziddan Hidayatullah on 28/09/22.
//

import Foundation

struct PostModel : Codable {
    let hits: [Item]
}

struct Item : Codable, Identifiable {
    let objectID: String
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String
}
