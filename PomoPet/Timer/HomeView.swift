//
//  TimerView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit
import SpriteKit

class HomeView: UIView {
    let timerView = TimerView()
    let characterView = CharacterView()
    let bottomButtons = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    func setupView() {
        backgroundColor = Theme.current.backgroundColor
        setupTimerView()
        setupCharacterView()
        setupBottomButtons()
    }
    
    func setupTimerView() {
        addSubview(timerView)
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            timerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            timerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            timerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4.5)
        ])
    }
    
    func setupCharacterView() {
        addSubview(characterView)
        NSLayoutConstraint.activate([
            characterView.topAnchor.constraint(equalTo: timerView.bottomAnchor),
            characterView.leadingAnchor.constraint(equalTo: leadingAnchor),
            characterView.trailingAnchor.constraint(equalTo: trailingAnchor),
            characterView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2.2)
        ])
    }
    
    func setupBottomButtons() {
        bottomButtons.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bottomButtons)
        bottomButtons.axis = .horizontal
        bottomButtons.distribution = .fillEqually
        bottomButtons.spacing = 15
        
        setupStartButton()
        setupPauseButton()
    
        NSLayoutConstraint.activate([
            bottomButtons.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            bottomButtons.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            bottomButtons.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            bottomButtons.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func setupStartButton() {
        let startButton = UIButton()
        startButton.setTitle("Start", for: .normal)
        startButton.backgroundColor = .blue
        startButton.layer.cornerRadius = 10
        
        bottomButtons.addArrangedSubview(startButton)
    }
    
    func setupPauseButton() {
        let pauseButton = UIButton()
        pauseButton.setTitle("Pause", for: .normal)
        pauseButton.backgroundColor = .red
        pauseButton.layer.cornerRadius = 10
        
        bottomButtons.addArrangedSubview(pauseButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
