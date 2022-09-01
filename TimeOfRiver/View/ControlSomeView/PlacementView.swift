//
//  PlacementView.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI

struct PlacementView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                print("Cancel Placement button pressed.")
                self.placementSettings.selectedModel = nil
            } label: {
                XMark()
            }
            
            Spacer()
            Button {
                print("Confirm Placement button pressed.")
                self.placementSettings.confirmedModel = self.placementSettings.selectedModel
                self.placementSettings.selectedModel = nil
            } label: {
                CheckMark()
            }
            Spacer()
        }
        .padding(.bottom, 30)
    }
}

struct PlacementButton: View {
    let IconViewName: String
    let action:() -> Void
    var body: some View {
        Button {
            self.action()
        } label: {
//            IconViewName()
//                .font(.system(size: 50, weight: .light, design: .default))
//                .foregroundColor(.white)
//                .buttonStyle(PlainButtonStyle())
        }
    }
}
struct PlacementView_Previews: PreviewProvider {
    static var previews: some View {
        PlacementView()
    }
}
