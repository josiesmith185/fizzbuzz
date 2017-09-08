//
//  ViewController.swift
//  FizzBuzz
//
//  Created by McGuestFace on 05/09/2017.
//  Copyright © 2017 McGuestFace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    var gameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func play(move: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
}
