//
//  APICaller.swift
//  Netflix Clone
//
//  Created by 정주호 on 03/11/2022.
//

import Foundation

struct Constants {
    static let APIKey = "697d439ac993538da4e3e60b54e762cd"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
   case failedTogetData
    
}

class APICaller {
    static let shared = APICaller()
    
    
    func getTrendingMoives(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.APIKey)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }

            
        }
        
        task.resume()
    }
    
}
