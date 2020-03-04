//
//  APIManager.swift
//  GitDemoProject
//
//  Created by Atul Tiwari on 03/03/20.
//  Copyright © 2020 Atul Tiwari. All rights reserved.
//

import Foundation


class ApiManager{
    
    var name = "Aman"
    var secondName = "aman"
    var name1 = "sgjg"
    var age = 12345
    var email = "aman.joshi@Ftechiz.com"
    var name2 = "ganeshi"
    
    
    var a = 65234875
    var b = 894589659

    static let shared = ApiManager()
    
    func httpRequest(urlString:String, method:String, completion:@escaping (_ result:[String:Any]?, _ error:Error?) -> Void) {
        
        let urlSession = URLSession.shared
        
        urlSession.dataTask(with: URL(string: urlString)!) { (data, response, error) in
            if error == nil{
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    print(json)
                }catch {
                    print(error.localizedDescription)
                   
                }
            }else {
                print(error!.localizedDescription)
                completion(nil, error)
            }
        }
    }
}
