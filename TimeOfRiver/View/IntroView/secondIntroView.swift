//
//  secondIntroView.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/3/22.
//

import SwiftUI

struct secondIntroView: View {
    @Binding var isSecondView: Int
    var body: some View {
        ZStack {
            Image("secondView")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Button {
                        print("Continue")
                        isSecondView = 2
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(#colorLiteral(red: 0.5583333373069763, green: 0.4568897485733032, blue: 0.25822916626930237, alpha: 1)))
                            .frame(width: 171, height: 82)
                            
                            Image("start")
                                .resizable()
                                .frame(width: 72, height: 35)
                        }
                    }
                    .padding(.bottom, 300)
                    .padding(.trailing, 144)
                    
                }
                
            }
        }
        
    }
}

struct secondIntroView_Previews: PreviewProvider {
    static var previews: some View {
        secondIntroView(isSecondView: .constant(1))
    }
}
