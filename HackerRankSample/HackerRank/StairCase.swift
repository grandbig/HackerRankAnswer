//
//  StairCase.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/01.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    func staircase(n: Int) -> Void {
        
        var hash = "#"
        for i in 0..<n {
            let spaces = String(repeating: " ", count: (n - i - 1))
            print(spaces + hash)
            hash += "#"
        }
    }
}
