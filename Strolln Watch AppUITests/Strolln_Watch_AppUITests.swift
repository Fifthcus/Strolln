//
//  Strolln_Watch_AppUITests.swift
//  Strolln Watch AppUITests
//

import XCTest

final class Strolln_Watch_AppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func test_Strolln_UI_Onboarding() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchArguments = ["UI-Testing"]
        app.launch()
        
        // Basic
        XCTAssertTrue(app.staticTexts["Strolln"].waitForExistence(timeout: 3))
        let onboardingCarousel = app.otherElements["OnboardingCarousel"]
        onboardingCarousel.swipeLeft()
        
        // Ensure that button actually exists before tapping.
        let button = app/*@START_MENU_TOKEN@*/.buttons["Get Strolln"]/*[[".otherElements.buttons[\"Get Strolln\"]",".buttons",".buttons[\"Get Strolln\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(button.waitForExistence(timeout: 3))
        button.tap()
        XCTAssertFalse(button.exists)
        

        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // XCUIAutomation Documentation
        // https://developer.apple.com/documentation/xcuiautomation
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
