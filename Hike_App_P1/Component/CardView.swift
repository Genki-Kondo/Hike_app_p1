//
//  CardView.swift
//  Hike_App_P1
//
//  Created by 近藤元気 on 2023/10/01.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        //MARK: - CARD
        
        ZStack {
            CustumBackgroundView()
            VStack {
                
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        Spacer()
                        Button{
                            //Action: Show a sheet
                            print("The Button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }// : HEADER
                .padding(.horizontal, 30)
                
                ZStack {
                    
                    ZStack {
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color("ColorIndigoMedium"),
                                        Color("ColorSalmonLight")
                                    ],
                                    startPoint: .topLeading, endPoint:
                                    .bottomTrailing
                                )
                            ).frame(width: 256, height: 256)
                        Image("image-1")
                            .resizable()
                            .scaledToFit()
                        
                        //MARK: - FOOTER
                    }
                }//Card
                
            }
        }.frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
