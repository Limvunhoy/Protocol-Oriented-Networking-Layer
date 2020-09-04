//
//  NewsfeedResource.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

enum NewsfeedResource {
    case fetchNewsfeed(userId: String, page: Int)
}

extension NewsfeedResource: TargetType {
    var path: String {
        switch self {
            
        case .fetchNewsfeed:
            return "endpoint"
        }
    }
    
    var method: HTTPMethod {
        switch self {
            
        case .fetchNewsfeed:
            return .post
        }
    }
    
    var task: Task {
        switch self {
            
        case .fetchNewsfeed(let userId, let page):

            let bodyRequest: [String: String] = ["": ""]
            let urlParams: [String: Any] = ["": ""]
            
            return .requestParameters(bodyParameters: bodyRequest, bodyEncoding: .urlAndJsonEncoding, urlParameters: urlParams)
        }
    }
    
    var headers: Headers {
        switch self {
            
        case .fetchNewsfeed:
            return getHeader()
            
        }
    }
    
}
