//
//  ViewController.swift
//  Consequences
//
//  Created by Maks Niagolov on 2020/06/11.
//  Copyright © 2020 Maksim Niagolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldInput: UITextField!
    @IBOutlet weak var textViewResult: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doCalculate(_ sender: Any) {
        
        guard let text = self.textFieldInput.text else {
            return
        }
        let inputArray = text.components(separatedBy: ",")
            .map({ string in
            return Int(string.filter("0123456789".contains)) ?? 0
        })
        
        self.textViewResult.text = Array<Any>.doFormSequence(inputArray)
    }
    

}

