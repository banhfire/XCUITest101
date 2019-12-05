//
//  WelcomeStepDefinitions.swift
//  XCUITest101UITests
//
//  Created by Tim Banh on 12/4/19.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import XCTest
extension XCUITestBase {
	func givenILaunchedAnApp() {
		XCTContext.runActivity(named: "Given I launched an App") { _ in
			XCUIApplication().launch()
		}
	}
	func whenITapOnEnter() {
		XCTContext.runActivity(named: "When I tap on the enter button") { _ in
			XCUIApplication().buttons["enter"].tap()
		}
	}
	func thenIShouldSeeWelcomeMessage() {
		XCTContext.runActivity(named: "Then I should see Welcome message") { _ in
			XCTAssert(app.staticTexts["Welcome to XCUITest"].exists)
		}
    }
	
}

protocol Welcome {
	func testWelcomeMessage()
	func testWelcomemMessageInBDDStyle()
}
