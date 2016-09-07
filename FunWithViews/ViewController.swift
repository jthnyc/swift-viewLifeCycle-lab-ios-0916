//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redBox:UILabel!
    @IBOutlet weak var orangeBox:UILabel!
    @IBOutlet weak var yellowBox:UILabel!
    @IBOutlet weak var greenBox:UILabel!
    @IBOutlet weak var blueBox:UILabel!
    @IBOutlet weak var purpleBox:UILabel!
    
    @IBOutlet weak var Box1:UILabel!
    @IBOutlet weak var Box2:UILabel!
    @IBOutlet weak var Box3:UILabel!
    @IBOutlet weak var Box4:UILabel!
    @IBOutlet weak var Box5:UILabel!
    @IBOutlet weak var Box6:UILabel!
    @IBOutlet weak var Box7:UILabel!
    
    var diceCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redBox.hidden = true
        orangeBox.hidden = true
        yellowBox.hidden = true
        greenBox.hidden = true
        blueBox.hidden = true
        purpleBox.hidden = true
        Box1.hidden = true
        Box2.hidden = true
        Box3.hidden = true
        Box4.hidden = true
        Box5.hidden = true
        Box6.hidden = true
        Box7.hidden = true
        
    }
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func makeItGoAway (){
        Box1.hidden = true
        Box2.hidden = true
        Box3.hidden = true
        Box4.hidden = true
        Box5.hidden = true
        Box6.hidden = true
        Box7.hidden = true
    }
    
    // Requires an Int
    func rearrangeDie (num: Int){
        switch (num) {
        case 1 :
            makeItGoAway()
            Box4.hidden = false
        case 2 :
            makeItGoAway()
            Box1.hidden = false
            Box7.hidden = false
        case 3 :
            makeItGoAway()
            Box3.hidden = false
            Box4.hidden = false
            Box5.hidden = false
        case 4 :
            makeItGoAway()
            Box1.hidden = false
            Box3.hidden = false
            Box5.hidden = false
            Box7.hidden = false
        case 5 :
            makeItGoAway()
            Box1.hidden = false
            Box3.hidden = false
            Box4.hidden = false
            Box5.hidden = false
            Box7.hidden = false
        case 6 :
            makeItGoAway()
            Box1.hidden = false
            Box2.hidden = false
            Box3.hidden = false
            Box5.hidden = false
            Box6.hidden = false
            Box7.hidden = false
        default:
            break
            
        }
    }
    
    // updating the row of dice count with each click and random number
    func updateScore(diceCount: Int, score : Int){
        switch (diceCount) {
        case 1:
            redBox.hidden = false
            redBox.text = String (score)
        case 2:
            orangeBox.hidden = false
            orangeBox.text = String (score)
        case 3:
            yellowBox.hidden = false
            yellowBox.text = String (score)
        case 4:
            greenBox.hidden = false
            greenBox.text = String (score)
        case 5:
            blueBox.hidden = false
            blueBox.text = String (score)
        case 6:
            purpleBox.hidden = false
            purpleBox.text = String (score)
        default:
            break
            
        }
        
    }
    
    
    @IBAction func diceRoll(sender: AnyObject) {
        
        diceCount += 1
        if diceCount <= 6 {
            print("Pressed dice button")
            let score = randomDiceRoll()
            updateScore(diceCount, score: score)
            rearrangeDie(score)
            
        }
        else {
            redBox.hidden = true
            orangeBox.hidden = true
            yellowBox.hidden = true
            greenBox.hidden = true
            blueBox.hidden = true
            purpleBox.hidden = true
            Box1.hidden = true
            Box2.hidden = true
            Box3.hidden = true
            Box4.hidden = true
            Box5.hidden = true
            Box6.hidden = true
            Box7.hidden = true

            diceCount = 0
            diceCount += 1
                if diceCount <= 6 {
                    print("Pressed dice button")
                    let score = randomDiceRoll()
                    updateScore(diceCount, score: score)
                    rearrangeDie(score)
                    
                }
        
        }
    
    }
}