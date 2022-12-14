//
//  ControlView.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI

struct ControlView: View {
    @Binding var isControlsVisible: Bool
    @Binding var showBrowse: Bool
    
    var body: some View {
        VStack {
            ControlVisibilityToggleButton(isControlsVisible: $isControlsVisible)
            Spacer()
            
            if isControlsVisible {
                ControlButtonBar(showBrowse: $showBrowse)
            }
        }
    }
}

struct ControlVisibilityToggleButton: View {
    @Binding var isControlsVisible: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            ZStack {
//                Color.black.opacity(0.25)
//                ControlButton(systemIconName: self.isControlsVisible ? "rectangle" : "slider.horizontal.below.rectangle") {
//                    self.isControlsVisible.toggle()
//                    print("Control Visibility Toggle Button pressed.")
//                }
            }
            .frame(width: 50, height: 50)
            .cornerRadius(8.0)
            
        }
        .padding(.top, 45)
        .padding(.trailing, 20)
    }
}

struct ControlButtonBar: View {
    @Binding var showBrowse: Bool
    
    var body: some View {
        HStack {
//            ControlButton(systemIconName: "camera.shutter.button") {
//                print("shutter button pressed.")
//            }
            
            Spacer()
            
            Button {
                print("Browse button pressed.")
                self.showBrowse.toggle()
            } label: {
                AddButton()
            }
            .sheet(isPresented: $showBrowse) {
                BrowseView(showBrowse: $showBrowse)
            }
            
            Spacer()
            
//            ControlButton(systemIconName: "slider.horizontal.3") {
//                print("Settings button pressed.")
//            }
        }
        .frame(maxWidth: 500)
        .padding(30)
//        .background(Color.black.opacity(0.25))
    }
}

struct ControlButton: View {
    let systemIconName: String
    let action: () -> Void
    
    var body: some View {
        Button {
            self.action()
        } label: {
            Image(systemName: "\(systemIconName)")
                .font(.system(size: 35))
                .foregroundColor(.white)
                .buttonStyle(PlainButtonStyle())
        }
        .frame(width: 50, height: 50)
        
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView(isControlsVisible: .constant(true), showBrowse: .constant(false))
    }
}
