//
//  EnergyBar.swift
//  Team17Project
//
//  Created by Imelda Damayanti on 26/05/26.
//

import SwiftUI

struct EnergyBar: View {
    var body: some View {
        HStack{
            GeometryReader{ geo in
                ZStack (alignment: .leading){
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 350)
                        .offset(x: 0, y: -1)
                    
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 350)
                        .offset(x: 0, y: 5)
                    
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: geo.size.width * 0.6)
                        .padding(.leading)
                }
            }
            .frame(width: 350, height: 40)
            .overlay(alignment: .leading){
                ZStack{
                    Circle()
                        .fill(Color.black)
                        .frame(width: 56, height: 56)
                        .offset(y:5)
                    Circle()
                        .fill(Color.white)
                        .overlay(
                            Image(systemName: "bolt.fill")
                        )
                        .font(.system(size: 32, weight: .bold))
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 1)
                        )
                        .frame(width: 56, height: 56)
                }
                
                
            }
            Text("10")
            .font(.title3.bold())
        }
        .padding(.leading, 4)
    }
    
}

#Preview {
    EnergyBar()
}
