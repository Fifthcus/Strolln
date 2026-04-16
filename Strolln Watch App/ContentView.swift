//
//  ContentView.swift
//  Strolln Watch App
//

import SwiftUI

struct PrimaryView: View {
    var body: some View {
        VStack {
            Text("Strolln")
                .font(.largeTitle)
            Spacer()
            Image(systemName: "figure.walk.motion")
                .imageScale(.large)
                .font(.largeTitle)
            Spacer()
        }
        .padding()
    }
}

struct SecondaryView: View {
    let appDescription: String = """
    An app you can use to track your late night walks.
    """
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false
    var body: some View {
        VStack {
            Text(appDescription)
                .multilineTextAlignment(.leading)
            Spacer()
            Button(
                action: {
                    hasSeenOnboarding = true
                },
                label: {
                    Text("Get Strolln")
                }
            )
        }
        .padding()
    }
}

struct ContentView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false
    var body: some View {
        if hasSeenOnboarding {
            HomeView()
        } else {
            TabView {
                PrimaryView()
                SecondaryView()
            }
        }
    }
}

#Preview {
    ContentView()
        .onAppear {
            UserDefaults.standard.set(false, forKey: "hasSeenOnboarding")
        }
}
