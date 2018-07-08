//
//  ViralAdvertising.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/08.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func viralAdvertising(n: Int) -> Int {
        // 最初は5人から始まる
        // floor(5/2) = 2 → liked 1日目
        // floor(2 * 3 / 2) = 3 → liked 2日目
        // floor(3 * 3 / 2) = 4 → liked 3日目
        // floor(4 * 3 / 2) = 6 → liked 4日目
        var day = 1
        var liked: Int = 0
        var totalLiked: Int = 0
        
        while day <= n {
            if day == 1 {
                liked = Int(floor(5/2))
            } else {
                liked = Int(floor(Double(liked * 3 / 2)))
            }
            day += 1
            totalLiked += liked
        }
        
        return totalLiked
    }
}
