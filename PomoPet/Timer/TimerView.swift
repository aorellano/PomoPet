//
//  TimerView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit

class TimerView: UIView {
    let timer = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    func setupView() {
        backgroundColor = Theme.current.backgroundColor
        translatesAutoresizingMaskIntoConstraints = false
        setupTimer()
    }
    
    func setupTimer() {
        timer.text = "25:00"
        timer.font = timer.font.withSize(115)
        timer.textColor = Theme.current.accentColor
       

        timer.translatesAutoresizingMaskIntoConstraints = false
        placeTimer()
    }
    
    func placeTimer() {
        addSubview(timer)
        
        timer.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        timer.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
