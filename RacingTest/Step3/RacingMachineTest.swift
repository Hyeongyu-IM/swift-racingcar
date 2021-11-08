//
//  RacingMachineTest.swift
//  RacingTest
//
//  Created by 임현규 on 2021/11/03.
//

import XCTest
@testable import RacingCar

class RacingMachineTest: XCTestCase {
    let store: RacingMachine = RacingMachine(racingInput: RacingInput(carCount: "1", roundCount: "1"))

    func test_random_number_output() {
        XCTAssertTrue(Array(0...9).contains(store.getRandomNumber()))
    }
    
    func test_user_input_validation_check() {
        XCTAssertTrue(store.isValidInput(userInput: RacingInput(carCount: "1", roundCount: "5")))
        XCTAssertTrue(store.isValidInput(userInput: RacingInput(carCount: "2", roundCount: "5")))
        XCTAssertTrue(store.isValidInput(userInput: RacingInput(carCount: "3", roundCount: "4")))
        XCTAssertFalse(store.isValidInput(userInput: RacingInput(carCount: "test", roundCount: "test")))
        XCTAssertFalse(store.isValidInput(userInput: RacingInput(carCount: "a", roundCount: "b")))
        XCTAssertFalse(store.isValidInput(userInput: RacingInput(carCount: "d", roundCount: "c")))
    }
    
    func test_is_over_three() {
        XCTAssertEqual(store.isOverThree(number: 0), "")
        XCTAssertEqual(store.isOverThree(number: 1), "")
        XCTAssertEqual(store.isOverThree(number: 2), "")
        XCTAssertEqual(store.isOverThree(number: 3), "")
        XCTAssertEqual(store.isOverThree(number: 4), "-")
        XCTAssertEqual(store.isOverThree(number: 5), "-")
        XCTAssertEqual(store.isOverThree(number: 6), "-")
        XCTAssertEqual(store.isOverThree(number: 7), "-")
        XCTAssertEqual(store.isOverThree(number: 8), "-")
        XCTAssertEqual(store.isOverThree(number: 9), "-")
    }
}
