//
//  ViewController.swift
//  HackerRankSample
//
//  Created by Takahiro Kato on 2018/06/08.
//  Copyright © 2018年 Takahiro Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapOnButtonA(_ sender: Any) {
        sample2(text: "1,2,3,4,4,6,7")
    }

    @IBAction func tapOnButtonB(_ sender: Any) {
        _ = timeConversion(s: "07:05:45PM")
    }
    
    func testMethod(matrix: [[Int]]) {
        var result1 = 0
        var result2 = 0
        for (key, elem) in matrix.enumerated() {
            result1 += elem[key]
            result2 += elem[(elem.count - key - 1)]
        }
        
        print(abs(result1 - result2))
    }
    
    func testMethod2(arr: [Int]) {
        let count = Double(arr.count)
        var positive = 0.0
        var negative = 0.0
        var zero = 0.0
        for elem in arr {
            switch elem {
            case (let num) where num == 0:
                zero += 1
            case (let num) where num > 0:
                positive += 1
            case (let num) where num < 0:
                negative += 1
            default:
                break
            }
        }
        let text = String(format: "%.6f\n%.6f\n%.6f", positive/count, negative/count, zero/count)
        print(text)
    }
    
    func sample2(text: String) {
        var result = ""
        let separators = CharacterSet.init(charactersIn: ",")
        let words = text.components(separatedBy: separators)
        for (key, value) in words.enumerated() {
            if key % 2 != 0 {
                result += value
            } else if key > 0 && value == words[key - 1] {
                result += value
            } else {
                // noop
            }
            
            if key != words.count - 1 {
                result += ","
            }
            _ = result.dropLast()
            
        }
    }
}

