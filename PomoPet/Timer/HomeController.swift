//
//  ViewController.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit

class HomeController: UIViewController {
    let homeView = HomeView()
    override func viewDidLoad() {
        super.viewDidLoad()

        addChildViewControllers()
    }
    
    func addChildViewControllers() {
        add(TimerController())
        add(CharacterController())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func loadView() {
        view = homeView
    }
}

