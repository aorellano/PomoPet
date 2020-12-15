//
//  CharacterView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit
import SpriteKit

class CharacterView: SKView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupScene()
    }
    
    func setupScene() {
        let size = CGSize(width: UIScreen.main.bounds.width, height: 150)
        let scene = SKScene(size: size)
        scene.backgroundColor = .red
        presentScene(scene)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
