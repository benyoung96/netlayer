//
//  EndPoint.swift
//  Netlayer
//
//  Created by Ben Young on 6/4/19.
//  Copyright © 2019 Ben Young. All rights reserved.
//

import Foundation

public protocol EndPointType {
    associatedtype Model: Encodable
    
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask<Model> { get }
    var headers: HTTPHeaders? { get }
    var model: Model? { get }
}
