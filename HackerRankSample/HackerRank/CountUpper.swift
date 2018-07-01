//
//  CountUpper.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/01.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    func countUpper(text: String) {
        var count = 0
        
        let separators = CharacterSet.init(charactersIn: " .")
        let words = text.components(separatedBy: separators)
        let orderedSet:NSOrderedSet = NSOrderedSet(array: words)
        let words2 = orderedSet.array as! [String]
        
        for elem in words2 {
            for i in 0..<elem.count {
                let partString = elem[elem.index(elem.startIndex, offsetBy: i)]
                if String(partString).range(of: "[A-Z]", options: .regularExpression) != nil {
                    count += 1
                    print(elem)
                    break
                }
                if String(partString).range(of: "[0-9]", options: .regularExpression) != nil {
                    count += 1
                    print(elem)
                    break
                }
                
            }
        }
        print(count)
    }
}
