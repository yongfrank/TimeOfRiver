//
//  PlacementSettings.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI
import RealityKit
import Combine

var cube = 0
var cone = 0
var block = 0

class PlacementSettings: ObservableObject {
    @Published var selectedModel: Model? {
        willSet(newValue) {
            print("Settings selectedModel to \(String(describing: newValue?.name))")
        }
    }
    
    @Published var confirmedModel: Model? {
        willSet(newValue) {
            guard let model = newValue else {
                print("Clearing confirmedModel")
                return
            }
            
            print("Settings confirmed to \(model.name)")
            if model.name == "Cube" {
                cube += 1
            }
            if model.name == "block" {
                block += 1
            }
            if model.name == "cone" {
                cone += 1
            }
            
            switch cube {
            case 1:
                villageAnchor.notifications.buildingUp.post()
            case 2:
                villageAnchor.notifications._2ndCube.post()
            default:
                print("I'm judging in cube")
            }
            
            switch block {
            case 1:
                villageAnchor.notifications.groupBuilding.post()
            case 2:
                villageAnchor.notifications.groupBuildingTwo.post()
            case 3:
                villageAnchor.notifications.bigHangzhou.post()
            default:
                print("I'm judging in cone")
            }
            switch cone {
            case 1:
                villageAnchor.notifications.coneOfMinus1.post()
            case 2:
                villageAnchor.notifications.coneOfZero.post()
            case 3:
                villageAnchor.notifications.coneOfOne.post()
            case 4:
                villageAnchor.notifications.coneOfTwo.post()
            default:
                print("I'm judging in cone")
            }
            
//            if cube == 2 {
//                print(String(cube) + "========")
//
//            }
        }
    }
    
    var sceneObserver: Cancellable?
}
