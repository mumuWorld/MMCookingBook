//
//  MCNetWorkTool.swift
//  MMCooking
//
//  Created by yangjie on 2019/8/16.
//  Copyright © 2019 yangjie. All rights reserved.
//

import UIKit
import Alamofire

public enum MCHTTPMethod: String {
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

class MCNetWorkTool: NSObject {
    func request(method: MCHTTPMethod = MCHTTPMethod.get, url: String, params: [String: Any]?) -> Void {
        Alamofire.request(url, method: method, parameters: params?, encoding: ParameterEncoding, headers: <#T##HTTPHeaders?#>)
    }
}
