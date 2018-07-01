//
//  BreakingRecords.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/01.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func breakingRecords(scores: [Int]) -> [Int] {
        // Input
        // 9: The number of games
        // 10 5 20 20 4 5 2 25 1: Scores
        
        // Output
        // 2 4: (The number of updated best score) (The number of update worst score)
        
        var result = [Int]()
        
        // Count the number of updated best score
        var updatedBestScoreCount = 0
        var bestScore = scores[0]
        scores.forEach { (score) in
            if score > bestScore {
                // updated best score
                bestScore = score
                updatedBestScoreCount += 1
            }
        }
        result.append(updatedBestScoreCount)
        
        // Count the number of updated worst score
        var updatedWorstScoreCount = 0
        var worstScore = scores[0]
        scores.forEach { (score) in
            if score < worstScore {
                // updated worst score
                worstScore = score
                updatedWorstScoreCount += 1
            }
        }
        result.append(updatedWorstScoreCount)
        
        return result
    }
}
