//
//  TimerView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit
import SpriteKit

class HomeView: UIView {
    var coinIcon = UIView()
    var coinAmount = UILabel()
    let timerView = TimerView()
    let characterView = CharacterView()
    let bottomButtons = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        setupSubviews()
    }
    
    func setupSubviews() {
        setupCoinHeader()
        setupTimer()
        setupCharacterView()
    }
    
    func setupCoinHeader() {
        addSubview(coinIcon)
        coinIcon.translatesAutoresizingMaskIntoConstraints = false
        coinIcon.backgroundColor = .purple
        NSLayoutConstraint.activate([
            coinIcon.topAnchor.constraint(equalTo: topAnchor),
            coinIcon.leadingAnchor.constraint(equalTo: leadingAnchor),
            coinIcon.trailingAnchor.constraint(equalTo: trailingAnchor),
            coinIcon.heightAnchor.constraint(equalToConstant: 75)
        ])
    }
    
    func setupTimer() {
        addSubview(timerView)
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: coinIcon.bottomAnchor),
            timerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            timerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            timerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2.5)
        ])
    }
    
    func setupCharacterView() {
        addSubview(characterView)
        NSLayoutConstraint.activate([
            characterView.topAnchor.constraint(equalTo: timerView.bottomAnchor),
            characterView.leadingAnchor.constraint(equalTo: leadingAnchor),
            characterView.trailingAnchor.constraint(equalTo: trailingAnchor),
            characterView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2.5)
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
