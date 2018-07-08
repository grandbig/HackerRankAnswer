//
//  CatAndMouse.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/08.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    
    func catAndMouse(x: Int, y: Int, z: Int) -> String {
        
        // x: CatA, y: CatB, z: MouseC
        let catA = "Cat A"
        let catB = "Cat B"
        let mouseC = "Mouse C"
        
        let distanceAC = abs(x - z)
        let distanceBC = abs(y - z)
        let winner = distanceAC - distanceBC
        
        if winner == 0 {
            return mouseC
        } else if winner < 0 {
            return catA
        } else {
            return catB
        }
    }
}
