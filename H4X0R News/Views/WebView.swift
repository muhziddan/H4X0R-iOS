//
//  WebView.swift
//  H4X0R News
//
//  Created by Muhammad Ziddan Hidayatullah on 29/09/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        // when want to make uiview, its going to try make a uikit web view and turn it to swiftui web view
        
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // updating the ui view
        // use the url and render the webkit view taht uses that url
        guard let safeStringURL = urlString else {return}
        
        guard let safeURL = URL(string: safeStringURL) else {return}
        
        let request = URLRequest(url: safeURL)
        uiView.load(request)
        
    }
}
