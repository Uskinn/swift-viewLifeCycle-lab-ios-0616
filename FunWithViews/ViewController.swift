//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var dice7: UIView!
    
    @IBOutlet weak var scoreOneView: UIView!
    @IBOutlet weak var scoreTwoView: UIView!
    @IBOutlet weak var scoreThreeView: UIView!
    @IBOutlet weak var scoreFourView: UIView!
    @IBOutlet weak var scoreFiveView: UIView!
    @IBOutlet weak var scoreSixView: UIView!
    
    @IBOutlet weak var scoreOneLabel: UILabel!
    @IBOutlet weak var scoreTwoLabel: UILabel!
    @IBOutlet weak var scoreThreeLabel: UILabel!
    @IBOutlet weak var scoreFourLabel: UILabel!
    @IBOutlet weak var scoreFiveLavel: UILabel!
    @IBOutlet weak var scoreSixLabel: UILabel!
    
    var newNumber: Int = 0
    var scoreArray: Array = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideAllViews()
        hideScore()

        

        
    }
    
    @IBAction func playButton(sender: AnyObject) {
        
        print("Play button presed!")
        rearrangeDie()
        
    }
    
    func hideAllViews() {
        self.dice1.hidden = true
        self.dice2.hidden = true
        self.dice3.hidden = true
        self.dice4.hidden = true
        self.dice5.hidden = true
        self.dice6.hidden = true
        self.dice7.hidden = true
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rearrangeDie() {
        
        newNumber = randomDiceRoll()
        
        hideAllViews()
        updateScore()
        
        switch newNumber {
            case 1:
                self.dice7.hidden = false
            case 2:
                self.dice1.hidden = false
                self.dice6.hidden = false
            case 3:
                self.dice1.hidden = false
                self.dice6.hidden = false
                self.dice7.hidden = false
            case 4:
                self.dice1.hidden = false
                self.dice2.hidden = false
                self.dice5.hidden = false
                self.dice6.hidden = false
            case 5:
                self.dice1.hidden = false
                self.dice2.hidden = false
                self.dice5.hidden = false
                self.dice6.hidden = false
                self.dice7.hidden = false
            case 6:
                self.dice1.hidden = false
                self.dice2.hidden = false
                self.dice3.hidden = false
                self.dice4.hidden = false
                self.dice5.hidden = false
                self.dice6.hidden = false
            default:
                break
        }
        
    }
    
    func updateScore() {
        
    scoreArray.append(newNumber)
    switch scoreArray.count {
        
    case 1:
        scoreOneView.hidden = false
        scoreOneLabel.hidden = false
        scoreOneLabel.text = "\(newNumber)"
    case 2:
        scoreTwoView.hidden = false
        scoreTwoLabel.hidden = false
        scoreTwoLabel.text = String(newNumber)
    case 3:
        scoreThreeView.hidden = false
        scoreThreeLabel.hidden = false
        scoreThreeLabel.text = "\(newNumber)"
    case 4:
        scoreFourView.hidden = false
        scoreFourLabel.hidden = false
        scoreFourLabel.text = "\(newNumber)"
    case 5:
        scoreFiveView.hidden = false
        scoreFiveLavel.hidden = false
        scoreFiveLavel.text = "\(newNumber)"
    case 6:
        scoreSixView.hidden = false
        scoreSixLabel.hidden = false
        scoreSixLabel.text = "\(newNumber)"
    default:
        scoreArray.removeAll()
        rearrangeDie()
        
        
        self.scoreOneView.hidden = false
        self.scoreTwoView.hidden = true
        self.scoreThreeView.hidden = true
        self.scoreFourView.hidden = true
        self.scoreFiveView.hidden = true
        self.scoreSixView.hidden = true
        
        self.scoreOneLabel.hidden = false
        self.scoreTwoLabel.hidden = true
        self.scoreThreeLabel.hidden = true
        self.scoreFourLabel.hidden = true
        self.scoreFiveLavel.hidden = true
        self.scoreSixLabel.hidden = true
        
        }
        
    }
    
    func hideScore() {
        
        self.scoreOneView.hidden = true
        self.scoreTwoView.hidden = true
        self.scoreThreeView.hidden = true
        self.scoreFourView.hidden = true
        self.scoreFiveView.hidden = true
        self.scoreSixView.hidden = true
        
        self.scoreOneLabel.hidden = true
        self.scoreTwoLabel.hidden = true
        self.scoreThreeLabel.hidden = true
        self.scoreFourLabel.hidden = true
        self.scoreFiveLavel.hidden = true
        self.scoreSixLabel.hidden = true

    }

}



























