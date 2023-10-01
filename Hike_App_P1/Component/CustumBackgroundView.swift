//
//  CustumBackgroundView.swift
//  Hike_App_P1
//
//  Created by 近藤元気 on 2023/10/01.
//

import SwiftUI

struct CustumBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3 .DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            //MARK: - 2 .LIGHT
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            //MARK: - 1 .SURFACE
            LinearGradient(colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top, endPoint: .bottom
            ).cornerRadius(40)
        }
    }
        
}

struct CustumBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustumBackgroundView()
            .padding()
    }
}
