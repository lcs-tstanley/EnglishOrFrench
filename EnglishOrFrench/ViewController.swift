//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Stanley, Trent on 2019-11-26.
//  Copyright © 2019 Stanley, Trent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var inputMessage: UITextField!
    @IBOutlet weak var outputResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func analyzeButton(_ sender: Any) {
        //Obtain value from text field
        guard let inputMessageAsString = inputMessage.text, inputMessageAsString.count > 0 else {
            outputResult.text = "Please enter some text or else tu est morte."
            return
        }
        
        //Make variables to check T and S count
        var tCount = 0
        var sCount = 0
        
        //Check each phrase for Ts and Ss
        for singleCharacter in inputMessageAsString.lowercased() {
            if singleCharacter == "s" {
                sCount += 1
            }
            
            if singleCharacter == "t" {
                tCount += 1
            }
            
            if tCount > sCount {
                outputResult.text = "English"
            }
            
            if sCount >= tCount {
                outputResult.text = "French"
                
            }
            
            
            
            
        }
        
        
        
}

}
