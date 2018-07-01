//
//  SortMethod.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/01.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    func sortMethod(arr: [Int]) {
        var a = arr.sorted(by: >)   // 降順
        var b = arr.sorted(by: <)   // 昇順
        print("\(a), \(b)")
        a.removeLast()
        b.removeLast()
        print("\(a), \(b)")
        
        let plus = { (a: Int, b: Int) -> Int in a + b }
        print("\(b.reduce(0, plus)) \(a.reduce(0, plus))")
    }
}
