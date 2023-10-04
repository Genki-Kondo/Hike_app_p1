//
//  CustomCircleView.swift
//  Hike_App_P1
//
//  Created by fantec on 2023/10/02.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimateGradient ?  .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ?  .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                    
                }
            .frame(width: 256, height: 256)
            MotionAnimationView()
        }//: Zstack
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
