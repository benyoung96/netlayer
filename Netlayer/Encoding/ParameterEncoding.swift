//
//  ParameterEncoding.swift
//  Netlayer
//
//  Created by Ben Young on 6/4/19.
//  Copyright © 2019 Ben Young. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

public protocol ModelEncoder {
    static func encode<Model: Encodable>(urlRequest: inout URLRequest, with model: Model) throws
}

public enum NetworkError : String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}
