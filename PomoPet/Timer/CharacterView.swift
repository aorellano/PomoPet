//
//  CharacterView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit
import SpriteKit

class CharacterView: SKView {
    var character: SKSpriteNode!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupScene()
        setupCharacter()
        
    }
    
    func setupScene() {
        translatesAutoresizingMaskIntoConstraints = false
        
        let size = CGSize(width: UIScreen.main.bounds.width, height: 300)
        let scene = SKScene(size: size)
        scene.backgroundColor = Theme.current.backgroundColor
        presentScene(scene)
    }
    
    func setupCharacter() {
        let characterTexture = SKTexture(imageNamed: "RM")
        character = SKSpriteNode(texture: characterTexture)
        character.size = CGSize(width: (scene?.frame.width)!/1.85, height: (scene?.frame.width)!/1.65)
    
        character.position = CGPoint(x: UIScreen.main.bounds.width/2, y: 140)
            
        scene?.addChild(character)
        characterWave(with: characterTexture)
    }
    
    func characterWave(with characterTexture: SKTexture) {
        let frame2 = SKTexture(imageNamed: "RMWave")
        let frame3 = SKTexture(imageNamed: "RMWave2")
        
        let animation = SKAction.animate(with: [frame2, frame3], timePerFrame: 0.12, resize: false, restore: true)

        let wave = SKAction.repeat(animation, count: 5)
        character.run(wave)
    }
        

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
