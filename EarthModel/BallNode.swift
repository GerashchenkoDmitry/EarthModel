//
//  BallModel.swift
//  EarthModel
//
//  Created by Dmitry on 14.05.2023.
//

import SceneKit

final class BallNode: SCNNode {
    
    private let colors = [UIColor(red: 247/255, green: 237/255, blue: 189/255, alpha: 1.0),
                          UIColor(red: 255/255, green: 51/255, blue: 95/255, alpha: 1.0),
                          UIColor(red: 22/255, green: 97/255, blue: 93/255, alpha: 1.0)]
        
    override init() {
        super.init()
        guard let randomColor = colors.randomElement() else { return }

        self.geometry = SCNSphere(radius: 1)
//        self.position = SCNVector3(x: <#T##Float#>, y: <#T##Float#>, z: <#T##Float#>)
        
        self
            .geometry?
            .firstMaterial?
            .diffuse
            .contents = randomColor
        
//        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"Diffuse")
//        self.geometry?.firstMaterial?.specular.contents = UIImage(named:"Specular")
//        self.geometry?.firstMaterial?.emission.contents = UIImage(named:"Emission")
//        self.geometry?.firstMaterial?.normal.contents = UIImage(named:"Normal")
//
//        self.geometry?.firstMaterial?.shininess = 50
//
//        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180), around: SCNVector3(x:0, y:1, z:0), duration: 8)
//
//        let repeatAction = SCNAction.repeatForever(action)
//
//        self.runAction(repeatAction)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
