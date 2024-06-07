//
//  ContentView.swift
//  HexColorExample
//
//  Created by Russell Gordon on 2024-06-07.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentColor: Color = Color.yellow
    
    var body: some View {
        
        ZStack {
            
            // Background layer
            currentColor
                .ignoresSafeArea()
            
            // Foreground layer
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()

        }
    }
}

#Preview {
    ContentView()
}
