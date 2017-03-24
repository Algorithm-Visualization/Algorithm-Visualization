//
//  BaseAlgorithm.swift
//  Algorithm-Visualization
//
//  Created by chenxiao on 2017/3/24.
//  Copyright © 2017年 Algorithm-Visualization. All rights reserved.
//

import UIKit

enum FactoryType: String {
    //目前先支持排序和搜索？
    case FactoryTypeSort
    case FactoryTypeSearch
}


// MARK: The client to use for call
class Client: NSObject {

    public class func createFactory(type: FactoryType) -> BaseFactory{
        // 创建需要的算法工厂
        switch type {
        case .FactoryTypeSort:
            return SortFactory()
        case .FactoryTypeSearch:
            return SearchFactory()
        }
    }
}
