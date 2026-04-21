//
//  ExerciseView.swift
//  Strolln Watch App
//

import SwiftUI

struct ExerciseView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image(systemName: "figure.walk")
                    .imageScale(.large)
                    .font(.largeTitle)
                    .background(
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.8891008496, green: 0.4062005281, blue: 0.4126768112, alpha: 1)))
                            .frame(width: isAnimated ? 90 : 75, height: isAnimated ? 90 : 75)
                            .onAppear {
                                withAnimation(.spring().repeatForever(autoreverses: true)){
                                    isAnimated.toggle()
                                }
                            }
                    )
                    .accessibilityIdentifier("strolln.ongoing")
                VStack {
                    Text("Time Elapsed")
                    Text("Heart Rate")
                }
                .font(.footnote)
                .padding(.vertical)
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar, content: {
                    Button(
                        action: {
                            
                        },
                        label: {
                            Image(systemName: "music.note")
                        }
                    )
                    Spacer()
                })
            }
        }
    }
}

#Preview {
    ExerciseView()
}
