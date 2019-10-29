//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Margiett Gil on 10/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PickOne: UILabel!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBOutlet weak var card3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func cardIns(_ sender: UIButton) {
        let cardsArray = 0...2
        // or var cardsArray = [0,1,2] ??
        let winningNumber = cardsArray.randomElement()
        
        print(winningNumber!)
        
        switch sender.tag {
        case 0:
            if sender.tag == winningNumber {
                print("You win")
                PickOne.text = "You Win"
            sender.setImage(UIImage(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                print("You Lose")
                PickOne.text = "You Lose"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                
                if winningNumber == card1.tag{
                    card1.setImage(UIImage(named: "kingCard"), for: .normal)
                } else if winningNumber == card2.tag {
            card2.setImage(UIImage(named:"kingCard"), for: .normal)
                } else if winningNumber == card3.tag {
                    card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    
                }
                
            }
            [card1, card2, card3].forEach({$0?.isEnabled = false})
        case 1:
            if sender.tag == winningNumber {
                print("You win")
                PickOne.text = "You Win"
            sender.setImage(UIImage(named: "kingCard"), for: .normal)
            } else {
                print("You Lose")
                PickOne.text = "You Lose"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                if winningNumber == card1.tag{
                                   card1.setImage(UIImage(named: "kingCard"), for: .normal)
               } else if winningNumber == card2.tag {
                           card2.setImage(UIImage(named:"kingCard"), for: .normal)
                                   
                               } else if winningNumber == card3.tag {
                                   card3.setImage(UIImage(named: "kingCard"), for: .normal)
                                   
                               }
            }
            [card1, card2, card3].forEach({$0?.isEnabled = false})
            
        case 2:
            if sender.tag == winningNumber {
                print("You win")
                PickOne.text = "You Win"
            sender.setImage(UIImage(named: "kingCard"), for: .normal)
            } else {
                print("You Lose")
                PickOne.text = "You Lose"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
        if winningNumber == card1.tag{
                           card1.setImage(UIImage(named: "kingCard"), for: .normal)
                       } else if winningNumber == card2.tag {
                   card2.setImage(UIImage(named:"kingCard"), for: .normal)
                           
                       } else if winningNumber == card3.tag {
                           card3.setImage(UIImage(named: "kingCard"), for: .normal)
                           
                       }
            }
        [card1, card2, card3].forEach({$0?.isEnabled = false})
            default:
            print("default")
        }
    }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        [card1, card2, card3].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
              [card1, card2, card3].forEach({$0?.isEnabled = true})
    }
    
}
