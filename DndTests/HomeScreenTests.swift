//
//  DndTests.swift
//  DndTests
//
//  Created by Andrea Bottino on 09/08/2024.
//

import XCTest
@testable import DnD_Roll

final class HomeScreenTests: XCTestCase {
    
    var homeScreenModel: HomeScreenModel!

    override func setUpWithError() throws {
        homeScreenModel = HomeScreenModel()
    }

    override func tearDownWithError() throws {
        homeScreenModel = nil
    }
    
    func testCorrectDieSelection() {
        // GIVEN
        
        // WHEN
        homeScreenModel.selectDie(tag: 5)
        
        // THEN
        XCTAssertEqual(homeScreenModel.selectedDie.name, "D20")
    }
    
    func testIncorrectDieSelection() {
        // GIVEN
        
        
        // WHEN
        homeScreenModel.selectDie(tag: 1)
        
        // THEN
        XCTAssertNotEqual(homeScreenModel.selectedDie.name, "D20")
    }
    
    func testCorrectDieRange() {
        // GIVEN
        
        
        // WHEN
        homeScreenModel.selectDie(tag: 0)
        
        // THEN
        XCTAssertEqual(homeScreenModel.selectedDie.range, 1...4)
    }

}
