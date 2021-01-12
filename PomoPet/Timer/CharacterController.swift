//
//  CharacterController.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit
import SpriteKit

class CharacterController: UIViewController {
    let characterView = CharacterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }
    
    override func loadView() {
        view = characterView
    }
}



