//
//  TimerController.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit

class TimerController: UIViewController {
    let timerView = TimerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = timerView
    }
}
