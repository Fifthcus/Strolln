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
    
    func completeOnboarding(app: XCUIApplication) {
        // Basic
        XCTAssertTrue(app.staticTexts["Strolln"].waitForExistence(timeout: 3))
        let onboardingCarousel = app.otherElements["OnboardingCarousel"]
        onboardingCarousel.swipeLeft()
        
        // Ensure that button actually exists before tapping.
        let button = app/*@START_MENU_TOKEN@*/.buttons["Get Strolln"]/*[[".otherElements.buttons[\"Get Strolln\"]",".buttons",".buttons[\"Get Strolln\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(button.waitForExistence(timeout: 3))
        button.tap()
        XCTAssertFalse(button.exists)
    }

    @MainActor
    func test_Strolln_UI_Onboarding() throws {
        let app = XCUIApplication()
        app.launchArguments = ["UI-Testing"]
        app.launch()
        completeOnboarding(app: app)
    }
    
    @MainActor
    func test_Strolln_UI_HomeView() throws {
        // Setup
        let app = XCUIApplication()
        app.launchArguments = ["UI-Testing"]
        app.launch()
        completeOnboarding(app: app)
        
        // Home View
        let beginStrollButton = app.buttons["strolln.begin"]
        XCTAssertTrue(beginStrollButton.waitForExistence(timeout: 3))
        beginStrollButton.tap()
        
        let ongoingStrollButton = app.images["strolln.ongoing"]
        XCTAssertTrue(ongoingStrollButton.waitForExistence(timeout: 3))
        
        // Add testing for the buttons in the toolbar as the functionality is built out.
        
        
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
