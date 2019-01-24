//
//  GameScene.swift
//  SpriteKitBurritoClicker
//
//  Created by 90302781 on 10/25/18.
//  Copyright © 2018 90302781. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let menuButton = SKSpriteNode(imageNamed: "MenuButton")
    let Burrito = SKSpriteNode(imageNamed: "Sprite 0")
    var BurritoAnimation = SKAction()
    var PointsLabel = SKLabelNode()
    var BurritoTexture = 1
    override func didMove(to view: SKView) {
        Burrito.position = CGPoint(x: 0, y: 0)
        Burrito.setScale(5)
        addChild(Burrito)
        Burrito.texture = SKTexture(imageNamed: "sprite_0")
        self.PointsLabel = self.childNode(withName: "Points") as! SKLabelNode
        menuButton.position = CGPoint(x: -302.082, y: 560)
        menuButton.texture = SKTexture(imageNamed: "MenuButton1")
        PointsLabel.text = "\(Variables.GameData.points)"
        addChild(menuButton)
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let location = touch.location(in: self)
        if Burrito.frame.contains(location){
            Variables.GameData.points = Variables.GameData.points + 1
            PointsLabel.text = "\(Variables.GameData.points)"
            Burrito.texture = SKTexture(imageNamed: "sprite_\(BurritoTexture)")
            BurritoTexture = BurritoTexture + 1
            if BurritoTexture == 6{
                BurritoTexture = 0
            }
        }
        if menuButton.frame.contains(location){
            let gameScene = GameScene(fileNamed: "MenuScreen")
            gameScene?.scaleMode = .aspectFill
            let reveal = SKTransition.doorsCloseHorizontal(withDuration: 0.5)
            view!.presentScene(gameScene!, transition: reveal)
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
