//
//  ViewController.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userId = "5eb63f8828873e56cfd0cfb3"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        NewsfeedService.sharedInstance.fetchNewsfeed(userId: userId, success: { (res) in
            print(res.data.records.count)
        }) { (error) in
            print(error)
        }
    }


}

