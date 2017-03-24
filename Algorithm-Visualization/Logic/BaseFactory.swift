//
//  BaseFactory.swift
//  Algorithm-Visualization
//
//  Created by chenxiao on 2017/3/24.
//  Copyright © 2017年 Algorithm-Visualization. All rights reserved.
//

import UIKit

class BaseFactory: NSObject {
    var inputStream: [Any]?
    var result: [Any]?
    var outputStream: [Any]? {
        //return computing result
        return result
    }
    public func receive(inputStream: [Any]) {
        inputStream = inputStream
    }

    public func compute() {
        //begin to work
    }

}
