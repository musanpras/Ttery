//
//  RecentTaskView.swift
//  Team17Project
//
//  Created by Muhammad Sandy Prastyo on 26/05/26.
//

import SwiftUI

struct RecentTaskView: View {
    var body: some View {
        ZStack{
                RoundedRectangle(cornerRadius: 13)
                    .fill(Color.black)
                    .frame(width: 348, height: 100)
                    .offset(x: 0, y: 5)
            
            RoundedRectangle(cornerRadius: 13)
                   .fill(Color(UIColor.systemBackground))
                   .frame(width:348, height: 100)
                   .overlay(
                           RoundedRectangle(cornerRadius: 13)
                               .stroke(Color.gray, lineWidth: 1)
                       )
        }
    }
}

#Preview {
    RecentTaskView()
}
