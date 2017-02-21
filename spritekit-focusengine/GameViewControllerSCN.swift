//
//  GameViewController.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit
import SceneKit
import GameplayKit

class GameViewControllerSCN: UIViewController {

    var currentScene:SKScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.view as! SCNView? {

            let skscene = PositionedMenuScene3(size: view.frame.size)
            // Set the scale mode to scale to fit the window
            skscene.scaleMode = .aspectFill
            currentScene = skscene
            // Present the scene

            let scnscene = SCNScene()

            view.overlaySKScene = skscene

            let sphere = SCNSphere(radius: 35.0)
            sphere.firstMaterial?.diffuse.contents = UIColor.blue
            let sphereNode = SCNNode(geometry: sphere)

            scnscene.rootNode.addChildNode(sphereNode)

            view.scene = scnscene

            view.autoenablesDefaultLighting = true
            view.backgroundColor = UIColor.black
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        print("gameviewcontroller.preferredfocusenvironments")
        if let scene = currentScene {
            return [scene]
        } else {
            return []
        }
    }
 
}
