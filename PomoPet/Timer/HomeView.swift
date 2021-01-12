//
//  TimerView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit
import SpriteKit

class HomeView: UIView {
    let coinHeaderView = CoinHeaderView()
    let timerView = TimerView()
    let characterView = CharacterView()
    let bottomButtons = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    func setupView() {
        backgroundColor = Theme.current.backgroundColor
        setupCoinHeaderView()
        setupTimerView()
        setupCharacterView()
    }
    
    func setupCoinHeaderView() {
        addSubview(coinHeaderView)
        NSLayoutConstraint.activate([
            coinHeaderView.topAnchor.constraint(equalTo: topAnchor),
            coinHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            coinHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
            coinHeaderView.heightAnchor.constraint(equalToConstant: 75)
        ])
    }
    
    func setupTimerView() {
        addSubview(timerView)
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: coinHeaderView.bottomAnchor),
            timerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            timerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            timerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4)
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
