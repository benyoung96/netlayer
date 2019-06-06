//
//  HTTPTask.swift
//  Netlayer
//
//  Created by Ben Young on 6/4/19.
//  Copyright © 2019 Ben Young. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String: String]

public enum HTTPTask<Model: Encodable> {
    case request
    
    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, headers: HTTPHeaders?)
    
    case requestCodable(model: Model)
    
    case requestCodableAndHeaders(model: Model, headers: HTTPHeaders?)
}
