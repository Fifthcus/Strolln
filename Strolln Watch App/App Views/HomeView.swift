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
            }
            .buttonStyle(.plain)
            .modifier(HomeViewToolbarModifier())
        }
    }
}

#Preview {
    HomeView()
}
