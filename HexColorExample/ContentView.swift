//
//  ContentView.swift
//  HexColorExample
//
//  Created by Russell Gordon on 2024-06-07.
//

import NVMColor
import SwiftUI

struct ContentView: View {
    
    @State private var currentColor: Color = Color.white
    
    var hexRepresentation: String {
        return String(currentColor.hex?.isHex()?.dropLast(2) ?? "FFFFFF")
    }
    
    var body: some View {
        
        ZStack {
            
            // Background layer
            currentColor
                .ignoresSafeArea()
            
            // Foreground layer
            VStack {
                
                ColorPicker("Background", selection: $currentColor)
                
                Text(hexRepresentation)
                
            }
            .padding()

        }
    }
}

#Preview {
    ContentView()
}
