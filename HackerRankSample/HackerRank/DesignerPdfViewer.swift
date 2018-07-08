//
//  DesignedPdfViewer.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/08.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func designerPdfViewer(h: [Int], word: String) -> Int {
        
        let alphabets = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
        var heights = [Int]()
        word.forEach { (character) in
            let index = alphabets.index(of: String(character))
            if let index = index {
                heights.append(h[index])
            }
        }
        let maxHeight = heights.max() ?? 1
        
        return word.count * maxHeight
    }
}
