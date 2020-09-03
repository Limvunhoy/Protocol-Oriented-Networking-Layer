//
//  TargetType.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

/// The protocol used to define the specifications necessary for a `MilioProvider`.

public typealias Headers = [String: String]

protocol TargetType {
    
    /// The target's base `URL`.
    var baseUrl: URL { get }
    
    /// The path to be appended to `baseURL` to form the full `URL`.
    var path: String { get }
    
    /// The HTTP method used in the request.
    var method: HTTPMethod { get }
    
    /// The type of HTTP task to be performed. (request body)
    var task: Task { get }
    
    /// The headers to be used in the request.
    var headers: Headers { get }
    
//    /// The params encoding type
//    var parametersEncoding: ParametersEncoding { get }
}

extension TargetType {
    
    var baseUrl: URL {
        return URL(string: "base_url")!
    }
    
    static private var baseHeader: [String: String] {
        return [
            HTTPHeader.contentType.rawValue: "application/json",
            HTTPHeader.authorization.rawValue: "Bearer token"

        ]
    }
    
    public func getHeader() -> [String: String] {
        return Self.baseHeader
    }
    
}
