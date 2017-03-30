//
//  SortFactory.swift
//  Algorithm-Visualization
//
//  Created by chenxiao on 2017/3/24.
//  Copyright © 2017年 Algorithm-Visualization. All rights reserved.
//

import UIKit

enum SortType: Int {
    case BubbleSort = 1     //冒泡排序
    case SelectSort         //选择排序
    case InsertSort         //插入排序
    case ShellSort          //希尔排序
    case HeapSort           //堆排序
    case MergeSort          //归并排序
    case QuickSort          //快速排序
    case RadixSort          //基数排序
    
}

typealias SortStepCallback = (_ index: Int, _ element: Int) -> Void
typealias SortFinishCallback = (_ result: [Int]) -> Void

// FIXME: 不会在继承中使用泛型, 不会使用泛型作为返回值, 骚年要不要解决下?
protocol SortConvention {
    func sort(params: [Int]) -> [Int]
    func setEachStepCallback(eachStep: @escaping SortStepCallback) -> Void
    func setFinishCallback(finish: @escaping SortFinishCallback) -> Void
    // TODO: 额外设置
}


class BaseSort : NSObject {
    var eachStep: SortStepCallback?
    var finish: SortFinishCallback?

    func displayEachStep(index: Int, element: Int) -> Void {
        guard let eachStepCallback = self.eachStep else {
            return
        }
        eachStepCallback(index, element)
        Thread.sleep(forTimeInterval: 1)
    }

    func displayResult(output: [Int]) {
        guard let finishCallback = self.finish else {
            return
        }
        finishCallback(output)
    }
    func setEachStepCallback(eachStep: @escaping SortStepCallback) {
        self.eachStep = eachStep
    }

    func setFinishCallback(finish: @escaping SortFinishCallback) {
        self.finish = finish
    }
}


class SortFactory: BaseFactory {
    func create(type: SortType) -> SortConvention {
        switch type {
        case .BubbleSort:
            return BubbleSort()
        default:
            return BubbleSort()
        }
    }
}
