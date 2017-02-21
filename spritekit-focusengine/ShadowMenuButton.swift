//
//  ShadowMenuButton.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit

class ShadowMenuButton: SKNode {
    
    var positionedMenuButton: PositionedMenuButton?
    
    convenience init(size: CGSize, positionedMenuButton button: PositionedMenuButton) {
        self.init()
        let sprite = SKSpriteNode(color: .init(colorLiteralRed: 0.0, green: 0.0, blue: 1.0, alpha: 0.000001), size: size)
        addChild(sprite)
        positionedMenuButton = button
    }
    
    override public var canBecomeFocused: Bool {
        get {
            print("ShadowMenuButton.canBecomeFocused")
            return true
        }
    }
    
    func buttonDidGetFocus() {
       positionedMenuButton?.buttonDidGetFocus()
    }
    
    func buttonDidLoseFocus() {
        positionedMenuButton?.buttonDidLoseFocus()
    }
   

}

