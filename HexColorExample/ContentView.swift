//
//  ContentView.swift
//  HexColorExample
//
//  Created by Russell Gordon on 2024-06-07.
//

// USING: https://github.com/NVMNovem/NVMColor_swift
import NVMColor
import SwiftUI

struct ContentView: View {
    
    @State private var currentColor: Color = Color.white
    
    // Get the hex value
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
                
                Rectangle()
                    .frame(height: 200)
                    .overlay {
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color(hex: hexRepresentation)) // Make a color from hex
                    }
                
            }
            .padding()

        }
    }
}

#Preview {
    ContentView()
}
