//
//  ContentView.swift
//  H4X0R News
//
//  Created by Muhammad Ziddan Hidayatullah on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { content in
                Text(content.title)
            }
            .navigationTitle("H4X0R News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DataModel : Identifiable {
    let id: Int
    let title: String
}

let posts = [
    DataModel(id: 1, title: "Hello"),
    DataModel(id: 2, title: "how r u"),
    DataModel(id: 3, title: "fine")
]
