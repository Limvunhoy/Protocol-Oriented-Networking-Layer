//
//  NetworkResponse.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

/// Api Request Result
enum NetworkResponse<T> {
    case success(T)
    case failure(APIError)
}

struct APIError: Codable {
    let status: Int
    let message: MessageResponse
    let httpCode: Int
}

struct MessageResponse: Codable {
    let code: Int
    let description: DescriptionResponse
}

struct DescriptionResponse: Codable {
    let en: String
    let kh: String
}
