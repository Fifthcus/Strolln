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
