//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Muhammad Ziddan Hidayatullah on 28/09/22.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var observedData = [Item]()
    
    func fetchData() {
        let urlString = "http://hn.algolia.com/api/v1/search?tags=front_page"
        
        guard let urlObject = URL(string: urlString) else {return}
        
        let urlSession = URLSession(configuration: .default)
        
        let task = urlSession.dataTask(with: urlObject) { data, response, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            guard let safeData = data else {return}
            
            guard let decoded = self.decode(data: safeData) else {return}
            
            DispatchQueue.main.async {
                self.observedData = decoded.hits
            }
        }
        
        task.resume()
    }
    
    func decode(data: Data) -> PostModel? {
        let decoder = JSONDecoder()
        
        do {
            let result = try decoder.decode(PostModel.self, from: data)
            return result
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
