//
//  Model.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI
import RealityKit
import Combine

enum ModelCategory: CaseIterable {
    case village
//    case brick
    
    var label: String {
        get {
            switch self {
            case.village:
                return "积木模型"
//            case.brick:
//                return "This is brick"
            }
        }
    }
}



class Model {
    var name: String
    var category: ModelCategory
    var thumbnail: UIImage
    var modelEntity: ModelEntity?
    var scaleCompensation: Float
    
    private var cancellable: AnyCancellable?
    
    init(name: String, category: ModelCategory, scaleCompensation: Float = 1.0) {
        self.name = name
        self.category = category
        self.thumbnail = UIImage(named: name) ?? UIImage(systemName: "photo")!
        self.scaleCompensation = scaleCompensation
    }
    
    // async load modelEntity
    func asyncLoadModelEntity() {
        let filename = self.name + ".usdz"
        self.cancellable = ModelEntity.loadModelAsync(named: filename)
            .sink { loadCompletion in
                switch loadCompletion {
                case .failure(let error): print("Unable to load modelEntity for \(filename). Error: \(error.localizedDescription)")
                case .finished:
                    break
                }
            } receiveValue: { modelEntity in
                self.modelEntity = modelEntity
                self.modelEntity?.scale *= self.scaleCompensation
                
                print("modelEntity for \(self.name) has been loaded.")
            }
    }
}

struct Models {
    var allModelsInArray: [Model] = []
    
    init() {
//        let village = Model(name: "village", category: .village, scaleCompensation: 0.1)
//        self.allModelsInArray += [village]
        
        let cube = Model(name: "Cube", category: .village, scaleCompensation: 0.2)
        self.allModelsInArray += [cube]
        let block = Model(name: "block", category: .village, scaleCompensation: 0.2)
        self.allModelsInArray += [block]
        let cone = Model(name: "cone", category: .village, scaleCompensation: 0.2)
        self.allModelsInArray += [cone]
    }
    
    func get(category: ModelCategory) -> [Model] {
        return allModelsInArray.filter {
            $0.category == category
        }
    }
}
