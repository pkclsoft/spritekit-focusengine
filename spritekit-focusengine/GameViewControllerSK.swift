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

class GameViewControllerSK: UIViewController {

    var currentScene:SKScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
            let skscene = PositionedMenuScene3(size: view.frame.size)
            // Set the scale mode to scale to fit the window
            skscene.scaleMode = .aspectFill
            currentScene = skscene
            // Present the scene
            view.presentScene(skscene)
    
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
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
