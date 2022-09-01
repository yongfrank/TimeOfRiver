//
//  TimeOfRiverApp.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI

 @main
struct TimeOfRiverAppTest: App {
    
    @StateObject var placementSettings = PlacementSettings()
    var body: some Scene {
        WindowGroup {
            IntroView()
                .environmentObject(placementSettings)
        }
    }
}
