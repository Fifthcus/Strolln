//
//  SwiftUIView.swift
//  Strolln
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: ExerciseView()) {
                Image(systemName: "figure.walk")
                    .imageScale(.large)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            .tint(.black)
            .modifier(HomeViewToolbarModifier())
            .accessibilityIdentifier("strolln.begin")
        }
    }
}

#Preview {
    HomeView()
}
