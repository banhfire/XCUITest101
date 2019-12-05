//
//  XCUITest101UITests.swift
//  XCUITest101UITests
//
//  Created by Shashikant Jagtap on 24/09/2018.
//  Copyright © 2018 Shashikant Jagtap. All rights reserved.
//

import XCTest

class XCUITest101UITests: XCUITestBase {
    func testWelcomeMessage() {
        app.buttons["enter"].tap()
        XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
    }
    
	func testWelcomeMessageInBDDStyle() {
			  givenILaunchedAnApp()
			  whenITapOnEnter()
			  thenIShouldSeeWelcomeMessage()
	}
}
