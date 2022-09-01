//
//  IntroView.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/3/22.
//

import SwiftUI
import AVFoundation

var backgroundMusic: AVAudioPlayer?
let path = Bundle.main.path(forResource: "bgm.mp3", ofType: nil)!
let url = URL(fileURLWithPath: path)
func music() {
    do {
        backgroundMusic = try AVAudioPlayer(contentsOf: url)
        backgroundMusic?.volume = 0.2
        backgroundMusic?.numberOfLoops = -1
        backgroundMusic?.play()
    } catch {
        
    }
}

struct IntroView: View {
    @State var isSecondView = 0
    
    var body: some View {
        
        if isSecondView == 0 {
            ZStack {
                Image("Background1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Button {
                            print("Continue")
                            isSecondView = 1
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color(#colorLiteral(red: 0.5583333373069763, green: 0.4568897485733032, blue: 0.25822916626930237, alpha: 1)))
                                .frame(width: 171, height: 82)
                                
                                Image("continue")
                                    .resizable()
                                    .frame(width: 72, height: 35)
                            }
                        }
                        .padding(.bottom, 300)
                        .padding(.trailing, 144)
                        
                    }
                    
                }
            }
            .onAppear() {
                music()
            }
        } else if isSecondView == 1 {
            secondIntroView(isSecondView: $isSecondView)
        } else {
            ContentView()
        }
        
    }
        
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView(isSecondView: 0)
    }
}
