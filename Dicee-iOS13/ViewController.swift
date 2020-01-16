//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ctrl->drag and drop dice images here
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // When the 'Roll' button gets tapped
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
        
        // Array of possible dice rolls - image Literals
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //Select a random element from the diceArray array
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        //diceImageView2.image =  diceArray[Int.random(in:0...5)]
        
        

    }
}

