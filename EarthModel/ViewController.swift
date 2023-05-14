//
//  ViewController.swift
//  EarthModel
//
//  Created by Dmitry on 13.05.2023.
//

import UIKit
import SceneKit

final class ViewController: UIViewController {
    
//    private var teams = [Division(name: "Develop", subDivions: []),
//                         Division(name: "Support", subDivions: []),
//                         Division(name: "Management", subDivions: []),
//                         Division(name: "HR", subDivions: []),
//                         Division(name: "Support", subDivions: [])]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene()
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 12)
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .probe
        lightNode.position = SCNVector3(x: 0, y: 10, z: 0)
        scene.rootNode.addChildNode(lightNode)
        
//        let lightNode1 = SCNNode()
//        lightNode1.light = SCNLight()
//        lightNode1.light?.type = .ambient
//        lightNode1.position = SCNVector3(x: 0, y: -10, z: 0)
//        scene.rootNode.addChildNode(lightNode1)
//        guard let stars = SCNParticleSystem(named: "Earth.scnp", inDirectory: nil) else {
//            fatalError("Unable to load stars particle system")
//        }
//        scene.rootNode.addParticleSystem(stars)
//        teams.forEach { team in
//            scene.rootNode.addChildNode(SCNNode)
//        }
        
        let ballNode = BallNode()
        ballNode.position = SCNVector3(x: 2, y: -2, z: 2)
        scene.rootNode.addChildNode(ballNode)
        
        let ballNode1 = BallNode()
        ballNode1.position = SCNVector3(x: 0, y: 2, z: 2)
        scene.rootNode.addChildNode(ballNode1)
        
        let ballNode2 = BallNode()
        ballNode2.position = SCNVector3(x: 0, y: -2, z: -2)
        scene.rootNode.addChildNode(ballNode2)
        
        let ballNode3 = BallNode()
        ballNode3.position = SCNVector3(x: 0, y: -2, z: 2)
        scene.rootNode.addChildNode(ballNode3)
        
        let ballNode4 = BallNode()
        ballNode4.position = SCNVector3(x: 2, y: 2, z: -2)
        scene.rootNode.addChildNode(ballNode4)
        
        guard let sceneView = self.view as? SCNView else {
            fatalError("Unable to load scene")
        }
        
        sceneView.scene = scene
        sceneView.showsStatistics = true
        sceneView.backgroundColor = .systemBackground
        sceneView.allowsCameraControl = true
    }
    
    override var prefersStatusBarHidden: Bool {
        true
    }
}

