//
//  NewsfeedService.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

class NewsfeedService: BaseApiService<NewsfeedResource> {
    
    static let sharedInstance = NewsfeedService()
    
    func fetchNewsfeed(userId: String, success: @escaping (FakeNewsfeedListResponse) -> Void, failure: @escaping (APIError) -> Void) {
        
        request(service: .fetchNewsfeed(userId: userId, page: 2), model: FakeNewsfeedListResponse.self) { (response) in
            switch response {
                
            case .success(let res):
                print(res)
                success(res)
            case .failure(let error):
                print(error)
                failure(error)
            }
        }
        
    }
    
}
