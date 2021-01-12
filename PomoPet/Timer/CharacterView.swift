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
        let characterTexture = SKTexture(imageNamed: "Panda")
        character = SKSpriteNode(texture: characterTexture)
        character.size = CGSize(width: (scene?.frame.width)!/1.8, height: (scene?.frame.width)!/1.5)
    
        character.position = CGPoint(x: UIScreen.main.bounds.width/2, y: 120)
            
        scene?.addChild(character)
    }
        

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
