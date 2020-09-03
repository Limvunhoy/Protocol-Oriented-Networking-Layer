//
//  HTTPMethod.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

/// HTTP Method Headers
public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}
