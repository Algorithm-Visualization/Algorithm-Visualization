//
//  BubbleSort.swift
//  Algorithm-Visualization
//
//  Created by chenxiao on 2017/3/30.
//  Copyright © 2017年 Algorithm-Visualization. All rights reserved.
//

import UIKit

class BubbleSort : BaseSort, SortConvention {
    func sort(params: [Int]) -> [Int] {
        var list = params
        for i in 0..<list.count {
            for j in (i+1)..<list.count {
                if list[i] > list[j] {
                    swap(&list[i], &list[j])
                    //单步调试
//                    displayEachStep(index: <#T##Int#>, element: <#T##Int#>)
                }
            }
        }
        displayResult(output: list)
        return list
    }
}
