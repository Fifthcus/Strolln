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
    var body: some View {
        VStack {
            Text(appDescription)
                .multilineTextAlignment(.leading)
            Spacer()
            Button(
                action: {
                
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
    var body: some View {
        TabView {
            PrimaryView()
            SecondaryView()
        }
    }
}

#Preview {
    ContentView()
}
