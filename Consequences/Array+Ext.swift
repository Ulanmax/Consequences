//
//  Array+Ext.swift
//  Consequences
//
//  Created by Maks Niagolov on 2020/06/11.
//  Copyright © 2020 Maksim Niagolov. All rights reserved.
//

import Foundation

extension Array {
    
    static func doFormSequence(_ inputArray: [Int]) -> String {
        let sortedArray = inputArray.sorted()

        var arrayResult: [[Int]] = []
        
        var tempArray: [Int] = []
        
        guard let first = sortedArray.first, let last = sortedArray.last else {
            return "No elements in array"
        }
        
        for i in first...last {
            if sortedArray.contains(where: {$0 == i}) {
               tempArray.append(i)
            } else if tempArray.count > 0 {
                    arrayResult.append(tempArray)
                    tempArray = []
            }
        }
        
        if tempArray.count > 0 {
            arrayResult.append(tempArray)
        }
        
        var result = ""

        for arrayFiltered in arrayResult {
            guard let first = arrayFiltered.first, let last = arrayFiltered.last else {
                return "No elements in filtered array"
            }
            
            let consequence = first == last ?  "\(first)" : "\(first)-\(last)"
            
            if result.count == 0 {
                result = "\(consequence)"
            } else {
                result = "\(result), \(consequence)"
            }

        }
        
        return result
    }

}

