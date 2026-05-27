//
//  ButtonComponents.swift
//  Team17Project
//
//  Created by ROONEY on 27/05/26.
//

import SwiftUI

struct ButtonComponents: View {
    var body: some View {
        
        ZStack{
            
            Color.gray
                    .ignoresSafeArea()
            
            VStack(spacing:50){
                
                Text("Button Components")
                
                HStack(spacing:20){
                    
//Info button
                    
                    Button(action: {}) {
                        Image(systemName: "info")
                            .foregroundStyle(.black)
                    }
                        .buttonStyle(.plain)
                        .frame(width: 48, height: 48)
                        .glassEffect(.regular.tint(.white), in: Circle())
                        .shadow(color: .black, radius: 0, x: 0, y: 5)
                        .accessibilityLabel("Information")
 
//Complete task button
                    
                    Button(action: {}) {
                        Image(systemName: "checkmark")
                            .foregroundStyle(.black)
                    }
                        .buttonStyle(.plain)
                        .frame(width: 48, height: 48)
                        .glassEffect(.regular.tint(.blue), in: Circle())
                        .shadow(color: .black, radius: 0, x: 0, y: 5)
                        .accessibilityLabel("Complete task")
                    
//Back button
                    
                    Button(action: {}) {
                        Image(systemName: "chevron.backward")
                            .foregroundStyle(.black)
                    }
                        .buttonStyle(.plain)
                        .frame(width: 48, height: 48)
                        .glassEffect(.regular.tint(.white), in: Circle())
                        .shadow(color: .black, radius: 0, x: 0, y: 5)
                        .accessibilityLabel("Back")
                    
                    
//Cancel task button
                 
                    Button(action: {}) {
                        Image(systemName: "trash")
                            .foregroundStyle(.black)
                    }
                        .buttonStyle(.plain)
                        .frame(width: 48, height: 48)
                        .glassEffect(.regular.tint(.red), in: Circle())
                        .shadow(color: .black, radius: 0, x: 0, y: 5)
                        .accessibilityLabel("Cancel task")
                
//Close button
                    
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                    }
                        .buttonStyle(.plain)
                        .frame(width: 48, height: 48)
                        .glassEffect(.regular.tint(.white), in: Circle())
                        .shadow(color: .black, radius: 0, x: 0, y: 5)
                        .accessibilityLabel("Back")

                    
                    
                    
                    
                    
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    ButtonComponents()
}
