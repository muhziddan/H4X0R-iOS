//
//  DetailView.swift
//  H4X0R News
//
//  Created by Muhammad Ziddan Hidayatullah on 29/09/22.
//

import SwiftUI

struct DetailView: View {
    
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


