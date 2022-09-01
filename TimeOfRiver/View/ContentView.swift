//
//  ContentView.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI
import RealityKit
import ARKit
let villageAnchor = try! VillageFrankTest.loadScene()

struct ContentView: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @State private var isControlsVisible: Bool = true
    @State private var showBrowse = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer()
            
            if self.placementSettings.selectedModel == nil {
                ControlView(isControlsVisible: $isControlsVisible, showBrowse: $showBrowse)
            } else {
                PlacementView()
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    @EnvironmentObject var placementSettings: PlacementSettings
    
    // MARK: - Make & Update
    func makeUIView(context: Context) -> CustomARView {
        
        let arView = CustomARView(frame: .zero)
        
        let session = arView.session
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal]
        session.run(config)
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = session
        coachingOverlay.goal = .horizontalPlane
        arView.addSubview(coachingOverlay)
        
        arView.scene.anchors.append(villageAnchor)
        
        self.placementSettings.sceneObserver = arView.scene.subscribe(to: SceneEvents.Update.self, { (event) in
            self.updateScene(for: arView)
        })
        
        
        openMapOfPlaces()
        
        
        return arView
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) {}
    
    // MARK: - updateScene
    private func updateScene(for arView: CustomARView) {
        arView.focusEntity?.isEnabled = self.placementSettings.selectedModel != nil
        
        if let confirmedModel = self.placementSettings.confirmedModel, let modelEntity = confirmedModel.modelEntity {
            self.place(modelEntity, in: arView)
            self.placementSettings.confirmedModel = nil
        }
    }
    
    
    private func place(_ modelEntity: ModelEntity, in arView: ARView) {
        let clonedEntity = modelEntity.clone(recursive: true)
        
        clonedEntity.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: clonedEntity)

        // MARK: - Preview & Simulator Wrong. You need to compile it on the real device~~
        let anchorEntity = AnchorEntity(plane: .any)
        anchorEntity.addChild(clonedEntity)

        arView.scene.addAnchor(anchorEntity)

        print("Added modelEntity to scene.")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PlacementSettings())
    }
}

func openMapOfPlaces() {
    villageAnchor.actions.goShiMenWan.onAction = { entity in
        openMap(address: "Chun%27an,%20Hangzhou,%20Zhejiang%20China&auid=1118551712908338&ll=29.586412,119.195664&lsp=57879&q=Shimenwan&_ext=Ch4KBAgEEAQKBAgFEAMKBAgGEAQKBAgKEAEKBAgbEAMSJCnB/Ttn0JM9QDFNxczexctdQDkB+VfKbZg9QEFHu8ulRc1dQA==")
    }
    villageAnchor.actions.goChangAnBa.onAction = { entity in
        openMap(address: "Haining,%20Jiaxing,%20Zhejiang%20China&auid=1118368990887851&ll=30.419512,120.433288&lsp=57879&q=Haining&_ext=CjgKBAgEEAQKBAgFEAMKBQgGEIUCCgQIChAKCgQIGxADCgQIUhAKCgQIVRARCgQIWRABCgUIpAEQARIkKfFJ4nEWaT5AMff0Fxr7Gl5AOTFF/tSzbT5AQfHqFuF6HF5A")
    }
    villageAnchor.actions.goChangAnZhen.onAction = { entity in
        openMap(address: "Haining,%20Jiaxing,%20Zhejiang%20China&auid=1118368990887851&ll=30.419512,120.433288&lsp=57879&q=Haining&_ext=CjgKBAgEEAQKBAgFEAMKBQgGEIUCCgQIChAKCgQIGxADCgQIUhAKCgQIVRARCgQIWRABCgUIpAEQARIkKfFJ4nEWaT5AMff0Fxr7Gl5AOTFF/tSzbT5AQfHqFuF6HF5A")
    }
    villageAnchor.actions.goGongchenqiao.onAction = { entity in
        openMap(address: "Bannong%20Street%202%20Nearby,%20Gongshu,%20Hangzhou,%20Zhejiang%20China&auid=1117323449370078&ll=30.318101,120.139844&lsp=57879&q=Gongchenqiao&_ext=Cj4KBAgDEAwKBAgEEAQKBAgFEAMKBAgFEAMKBQgGEIwCCgQIGxADCgQIUhAGCgQIVRANCgQIWRABCgUIpAEQARIkKfkVJhiTTT5AMa2nXIHUCF5AOSVOMxheVD5AQSMjYT8YCV5A")
    }
    villageAnchor.actions.goBeiXInChaoGuan.onAction = { entity in
        openMap(address: "Hushu%20North%20Road%20No.124%20Nearby,%20Gongshu,%20Hangzhou,%20Zhejiang%20China&auid=1118416958100739&ll=30.304676,120.138917&lsp=57879&q=Beixinguan&_ext=CjIKBAgEEAQKBAgFEAMKBQgGEI0CCgQIGxADCgQIUhAHCgQIVRARCgQIWRAFCgUIpAEQARIkKfkVJhiTTT5AMSX7Ju25CF5AORdle2haTj5AQSMjYT8YCV5A")
    }
    villageAnchor.actions.goXiHu.onAction = { entity in
        openMap(address: "No.1,%20Longjing%20Road,%20Xihu,%20Hangzhou,%20Zhejiang%20China&auid=1117323449002858&ll=30.222718,120.121281&lsp=57879&q=Hangzhou%20West%20Lake%20Scenery%20Spot&_ext=Cj4KBAgDEAwKBAgEEAQKBAgFEAMKBAgFEAMKBQgGEPYBCgQIGxADCgQIUhAGCgQIVRAKCgQIWRABCgUIpAEQARIkKcR7yYsRND5AMQV4EUZfBl5AOVBUe0zfRD5AQfQNRkzdCl5A")
    }
    villageAnchor.actions.goHangzhou.onAction = { entity in
        openMap(address: "hangzhou")
    }
    villageAnchor.actions.goXiaoShaoYunHe.onAction = { entity in
        openMap(address: "Xiaoshan,%20Hangzhou,%20Zhejiang%20China&auid=1117323447593648&ll=30.172092,120.332860&lsp=57879&q=Xiaoshao%20Canal&_ext=ChkKBAgEEAQKBAgFEAMKBQgGEN8BCgQIGxADEiQpmukZh78pPkAxZA6IsI0UXkA52uQ16lwuPkBBXgSHdw0WXkA=")
    }
}

func openMap(address: String) {
    UIApplication.shared.open(URL(string: "https://maps.apple.com/?address=\(address)")!)
}
