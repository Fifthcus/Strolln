//
//  HomeViewToolbarModifier.swift
//  Strolln Watch App
//

import SwiftUI

struct HomeViewToolbarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "music.note")
                    }
                    Spacer()
                    // History
                    Button(action: {
                        
                    }) {
                        Image(systemName: "list.bullet")
                    }
                }
            }
    }
}


/*
 
 Potentiall add a button so the user may access Apple Music, if possible.
 
 */
