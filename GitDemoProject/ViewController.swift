//
//  ViewController.swift
//  GitDemoProject
//
//  Created by Atul Tiwari on 03/03/20.
//  Copyright © 2020 Atul Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a = ""
    var b = ""
    var c = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hi")
        ApiManager.shared.httpRequest(urlString: "http://174.138.27.227:8190/wallet/generateaddress", method: "GET") { (response, error) in
            if response != nil {
                print(response)
            }else {
                print(error!.localizedDescription)
            }
        }
    }
}

