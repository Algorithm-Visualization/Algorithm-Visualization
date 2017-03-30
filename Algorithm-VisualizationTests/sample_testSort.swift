//
//  sample_testSort.swift
//  Algorithm-Visualization
//
//  Created by chenxiao on 2017/3/30.
//  Copyright © 2017年 Algorithm-Visualization. All rights reserved.
//

import Quick
import Nimble

class testSort: QuickSpec {
    override func spec() {
        describe("test Sort") {
            var bsFactory: SortFactory?
            beforeEach {
                bsFactory = Client.createFactory(type: .Sort) as? SortFactory
            }
            it("test BubbleSort", closure: { 
                let bs: SortConvention = bsFactory!.create(type: .BubbleSort)
                let result: Array = bs.sort(params: [2, 3, 1, 4])
                expect(result == [1, 2, 3, 4]).to(beTrue())
            })
        }
    }
}
