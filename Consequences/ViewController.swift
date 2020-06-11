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
    }

    @IBAction func doCalculate(_ sender: Any) {
        
        self.doCalculate()
    }
    
    func doCalculate() {
        
        if let text = self.textFieldInput.text  {
            self.textViewResult.text = Model().doCalculate(text: text)
        }
    }
    

}

