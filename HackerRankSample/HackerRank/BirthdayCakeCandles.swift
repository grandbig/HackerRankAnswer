//
//  BirthdayCakeCandles.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/01.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    func birthdayCakeCandles(arr: [Int]) {
        let numbers = arr.compactMap { Int($0) }
        let maxNumber = numbers.max()
        let occurrences = numbers.filter { $0 == maxNumber }
        print(occurrences.count)
    }
}
