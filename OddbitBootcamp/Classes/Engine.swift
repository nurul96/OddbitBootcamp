//
//  Engine.swift
//  OddbitBootcamp
//
//  Created by Bayu Yasaputro on 3/10/17.
//  Copyright © 2017 DyCode. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


typealias CompletionHandler = (_ result : Any?, _ error: Error?) -> Void

class Engine: NSObject{
    
    class var shared: Engine {
        struct Static {
            static let instance: Engine = Engine()
        }
        return Static.instance
    }
    
    
    // MARK: - API
    func getListMovie(completion: @escaping CompletionHandler){
        
        let url = "\(BASE_URL)\(DISCOVER_MOVIE_PATH_URL)"
        
        let parameter: [String: Any]? = [
            "primary_release_date.gte" : "2017-03-01",
            "page" : 1,
            "api_key" : API_KEY_TMDB
        ]
        
        Alamofire.request(url, method: .get, parameters: parameter, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            
            if let json = response.result.value as? JSON{
            
                var movies: [MovieModel] = []
                
                if let movieJSON = json["results"].array{
                    for movie in movieJSON{
                        movies.append(MovieModel.init(json: movie))
                    }
                }
                
                completion(movies, nil)
                
            } else if let error = response.result.error{
                completion(nil, error)
            } else{
                completion(nil, nil)
            }
        }
        
    }
    
    
}
