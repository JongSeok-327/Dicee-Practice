//
//  ViewController.swift
//  Dicee-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    let dices = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = dices[0]
        diceImageView2.image = dices[5]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = dices[leftDiceNumber % 6]
        diceImageView2.image = dices[rightDiceNumber % 6]
        
        leftDiceNumber += 1
        rightDiceNumber += 1
    }
    
}

