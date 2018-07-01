//
//  TimeConversion.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/07/01.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import Foundation

extension ViewController {
    func timeConversion(s: String) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm:ssa"
        let date = dateFormatter.date(from: s)
        
        dateFormatter.dateFormat = "HH:mm:ss"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        return dateFormatter.string(from: date!)
    }
}
