//
//  Task.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/2/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

/// Api request body
///
/// **********************
///
/// requestPlain: no request body
/// requestParameters: request body with params
///
/// **********************

//enum Task { // api request body
//    case requestPlain
//    case requestParameters(Parameters)
//}

enum Task {
    case requestPlain
    
    case requestParameters(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?,
        additionHeaders: Headers?)
    
}
