//
//  CountAppleAndOranges.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/05.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func countAppleAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
        // s: Sumの家の開始地点 例: 7
        // t: Sumの家の終了地点 例: 11
        // a: 林檎の木の位置 例: 5
        // b: オレンジの木の位置 例: 15
        // apples: 落ちた林檎が着地した、林檎の木からの距離例: [-2, 2, 1]
        // oranges: 落ちたオレンジが着地した、オレンジの木からの距離例: [5, -6]
        
        // まずは林檎の計算から開始する
        var sumAppleCount = 0
        for apple in apples {
            let position = a + apple
            if position >= s, position <= t {
                sumAppleCount += 1
            }
        }
        
        // 次にオレンジの計算
        var sumOrangeCount = 0
        for orange in oranges {
            let position = b + orange
            if position >= s, position <= t {
                sumOrangeCount += 1
            }
        }
        
        print("\(sumAppleCount)\n\(sumOrangeCount)")
    }
}
