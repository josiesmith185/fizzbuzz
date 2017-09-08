//
//  GameTests.swift
//  FizzBuzz
//
//  Created by McGuestFace on 06/09/2017.
//  Copyright © 2017 McGuestFace. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    

    class GameTests: XCTestCase {
  
        
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
  
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        let _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
}
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfMoveIsRight2() {
        game.score = 4
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    
    }
    func testIfMoveIsWrong2() {
        game.score = 2
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)

    }
    
    func testIfMoveIsRight3() {
        game.score = 14
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    func testIfMoveIsWrong3() {
        game.score = 11
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    func testIfMoveIsRight4() {
        game.score = 7
        let response = game.play(move: "8")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    func testIfMoveIsWrong5() {
        game.score = 4
        let response = game.play(move: "5")
        let result = response.right
        XCTAssertEqual(result, false)
        }
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
}
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move:"1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move:"1")
        XCTAssertNotNil(response.score)
}

}
