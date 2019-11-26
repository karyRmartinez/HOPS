//
//  ApiClient.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/5/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

import Foundation


struct MakeupAPIClient {
    static let manager = MakeupAPIClient()
    
    func getElements(completionHandler: @escaping (Result<[VeganMakeUpElement], AppError>) -> ()) {
        NetworkHelper.manager.performDataTask(withUrl: MakeupUrl, andMethod: .get) { (result) in
            switch result {
            case .failure(let error) :
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let ElementInfo = try JSONDecoder().decode(VeganMakeUpElement.self, from: data)
                    completionHandler(.success([ElementInfo]))
                } catch {
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                    

                }
            }
        }
    }
    
    private var MakeupUrl: URL {
        guard let url = URL(string: "http://makeup-api.herokuapp.com/api/v1/products.json?product=vegan") else {
            fatalError("Invalid URL")
        }
        return url
    }
    
    private init() {}
}
