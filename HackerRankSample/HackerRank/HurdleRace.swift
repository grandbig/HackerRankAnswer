//
//  HurdleRace.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/05.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func hurdleRace(k: Int, height: [Int]) -> Int {
        // initial maximum height Dan can jump: k
        // Dan can jump  unit high naturally
        // height = [1, 2, 3, 3, 2]
        
        // input: 5 4
        // output: 1 6 3 5 2
        
        // input: 5 7
        // output: 2 5 4 5 2
        
        var result = 0
        let maxHeight = height.max()
        guard let max = maxHeight else {
            return result
        }
        if k >= max {
            return result
        }
        
        result = max - k
        return result
    }
}
