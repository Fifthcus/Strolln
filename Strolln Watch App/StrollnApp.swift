//
//  StrollnApp.swift
//  Strolln Watch App
//

import SwiftUI

@main
struct Strolln_Watch_AppApp: App {
    
    init(){
        if CommandLine.arguments.contains("UI-Testing") {
            UserDefaults.standard.set(false, forKey: "hasSeenOnboarding")
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
