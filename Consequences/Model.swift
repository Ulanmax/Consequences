//
//  Model.swift
//  Consequences
//
//  Created by Maks Niagolov on 2020/06/11.
//  Copyright © 2020 Maksim Niagolov. All rights reserved.
//

class Model {
    
    init() {
    }
  
    func doCalculate(text: String) -> String {
        
        let inputArray = text.components(separatedBy: ",")
            .map({ string in
            return Int(string.filter("0123456789".contains)) ?? 0
        })
        
        let result = Array<Any>.doFormSequence(inputArray)
          
        return result
    }
}
