//
//  ContentView.swift
//  H4X0R News
//
//  Created by Muhammad Ziddan Hidayatullah on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.observedData) { content in
                HStack {
                    Text(String(content.points))
                    Text(content.title)
                }
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear() {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
