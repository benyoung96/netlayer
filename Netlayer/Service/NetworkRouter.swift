//
//  NetworkRouter.swift
//  Netlayer
//
//  Created by Ben Young on 6/4/19.
//  Copyright © 2019 Ben Young. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?,_ response: URLResponse?,_ error: Error?)->()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
