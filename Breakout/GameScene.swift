//
//  GameScene.swift
//  Breakout
//
//  Created by Tommy Colella on 3/5/20.
//  Copyright © 2020 Tommy Colella. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        createBackground()
    }
        func createBackground() {
            let stars = SKTexture(imageNamed: "Stars")
            for i in 0...1 {
                let starsBackground = SKSpriteNode(texture: stars)
                starsBackground.zPosition = -1
                starsBackground.position = CGPoint(x: 0, y: starsBackground.size.height * CGFloat(i))
                addChild(starsBackground)
                let moveDown = SKAction.moveBy(x: 0, y: -starsBackground.size.height, duration: 20)
                let moveReset = SKAction.moveBy(x: 0, y: starsBackground.size.height, duration: 0)
                let moveLoop = SKAction.sequence([moveDown, moveReset])
                let moveForever = SKAction.repeatForever(moveLoop)
                starsBackground.run(moveForever)
            }
        }
    }

