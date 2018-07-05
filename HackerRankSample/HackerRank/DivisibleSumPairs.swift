//
//  DivisibleSumPairs.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/05.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        // input1: n k
        // input2: ar[a0, a1,..., a(n-1)]
        
        // n: the number of array
        // k: the number for dividing
        // ar: the array
        
        // kの倍数を探す
        // arから2つの要素を取り出す
        
        var count = 0
        for (key, elem) in ar.enumerated() {
            var filteredAr = ar
            filteredAr.remove(at: key)
            filteredAr.forEach { (filteredElem) in
                let sum = elem + filteredElem
                if sum % k == 0 {
                    count += 1
                }
            }
        }
        
        return count / 2
    }
}
