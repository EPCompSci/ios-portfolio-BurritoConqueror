//
//  MenuScreen.swift
//  SpriteKitBurritoClicker
//
//  Created by 90302781 on 11/5/18.
//  Copyright © 2018 90302781. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class MenuScreen: SKScene {
    let menuButton = SKSpriteNode(imageNamed: "MenuButton")
    override func didMove(to view: SKView) {
        menuButton.position = CGPoint(x: -302.082, y: 560)
        menuButton.texture = SKTexture(imageNamed: "MenuButton1")
        addChild(menuButton)
    }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            let touch = touches.first!
            let location = touch.location(in: self)
            if menuButton.frame.contains(location){
                let gameScene = GameScene(fileNamed: "GameScene")
                gameScene?.scaleMode = .aspectFill
                let reveal = SKTransition.doorsOpenHorizontal(withDuration: 0.5)
                view!.presentScene(gameScene!, transition: reveal)
            }
        }
        
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}


