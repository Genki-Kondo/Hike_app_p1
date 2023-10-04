//
//  GradientButtonStyle.swift
//  Hike_App_P1
//
//  Created by fantec on 2023/10/02.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
        
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditonal statement with Nil Coalecing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User pressed the Button
                LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom)
                // B When the Button is not pressed
                :
                
                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
                
            )
            .cornerRadius(40)
    }
}
