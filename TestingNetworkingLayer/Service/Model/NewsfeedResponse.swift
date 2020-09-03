//
//  NewsfeedResponse.swift
//  TestingNetworkingLayer
//
//  Created by IG_Se7enzZ on 9/3/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation

struct FakeNewsfeedListResponse: Codable {
    let status: Int
    let data: DataResponse
}

struct DataResponse: Codable {
    let records: [RecordsResponse]
}

struct RecordsResponse: Codable {
    let type: String
}
