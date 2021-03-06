//
//  APIService.swift
//  TableViewTest
//
//  Created by Jack Uzcategui on 05/02/2020.
//  Copyright © 2020 __spitzfire__. All rights reserved.
//

import Foundation

class APIService {
    let   urlString:String="https://api.football-data.org/v2/areas"
    func fetchUsers(completionHandler: @escaping ([User]) -> Void) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let data = data, let userResults = try? JSONDecoder().decode(UserResult.self, from: data) {
                let array = userResults.results
                completionHandler(array)
            }
        })
        
        task.resume()
    }
}
 
