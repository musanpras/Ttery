//
//  HomeView.swift
//  Team17Project
//
//  Created by ROONEY on 26/05/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing:30){
            
                Text("pick a task.")
                    .font(.system(size:34, weight: .bold))

                
            ZStack{
                RoundedRectangle(cornerRadius: 13)
                       .fill(Color.white)
                       .overlay(
                               RoundedRectangle(cornerRadius: 13)
                                   .stroke(Color.black, lineWidth: 1)
                           )
                
                HStack(spacing:0){
                    VStack{
                        Spacer()
                               Text("...")
                            .font(.system(size: 34))
                               Text("...")
                                   .font(.system(size: 13))
                        Spacer()
                           }
                           .frame(maxWidth: .infinity)
                           
                           
                    Rectangle()
                                .fill(Color.black)
                                .frame(width: 1, height: 100)
                   
                    VStack{
                        Spacer()
                               Text("...")
                            .font(.system(size: 34))
                               Text("...")
                                   .font(.system(size: 13))
                        Spacer()
                           }
                           .frame(maxWidth: .infinity)
                    
                    Rectangle()
                                .fill(Color.black)
                                .frame(width: 1, height: 100)
                    
                    VStack{
                        Spacer()
                               Text("...")
                            .font(.system(size: 34))
                               Text("...")
                                   .font(.system(size: 13))
                        Spacer()
                           }
                           .frame(maxWidth: .infinity)
                    
                    Rectangle()
                                .fill(Color.black)
                                .frame(width: 1, height: 100)
                    
                    VStack{
                        Spacer()
                               Text("...")
                            .font(.system(size: 34))
                               Text("...")
                                   .font(.system(size: 13))
                        Spacer()
                           }
                           .frame(maxWidth: .infinity)
                    
                    
                }
                
                
            }
            .frame(width:348, height: 100)
            .compositingGroup()
            .shadow(color: Color.black, radius:0, x:0, y:5)
        }
    }
}

#Preview {
    HomeView()
}
