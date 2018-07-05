//
//  RepeatedString.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/05.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func repeatedString(s: String, n: Int) -> Int {
        // Example
        // Input
        // aba
        // 10
        // abaabaabaa
        // a's number is 7
        // Output
        // 7
        
        // sの中にaが何文字あるか計算する → △文字数 (例) 2
        // sが何文字か計算する → ◆文字数 (例) 3
        // Input2 / ◆文字数 (例) 10 /3 = 3...1
        // 何文字あるか × 何回分のワードか + 余り
        // 2 × 3 + 1
        
        // テキスト文字数
        let textLength = s.count
        // 何文字含まれているか計算
        do {
            let regex = try NSRegularExpression(pattern: "a", options: [.caseInsensitive])
            let targetStringRange = NSRange(location: 0, length: textLength)
            let countInText = regex.numberOfMatches(in: s, options: [], range: targetStringRange)
            let divisionRemain = n % textLength
            let divisionInteger = Int(floor(Double(n / textLength)))
            return countInText * divisionInteger + divisionRemain
        } catch {
            print("error")
            return 0
        }
    }
}
