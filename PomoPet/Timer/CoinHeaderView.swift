//
//  CoinHeader.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/15/20.
//

import UIKit

class CoinHeaderView: UIView {
    var coinIcon = UIImageView()
    var coinAmountLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }

    func setupView() {
        backgroundColor = Theme.current.backgroundColor
        translatesAutoresizingMaskIntoConstraints = false
        setupCoinAmountLabel()
        setupCoinIcon()
    }
    
    func setupCoinAmountLabel() {
        coinAmountLabel.text = "0"
        coinAmountLabel.textColor = Theme.current.accentColor
        coinAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        placeCoinAmountLabel()
    }
    
    func placeCoinAmountLabel() {
        addSubview(coinAmountLabel)
        
        NSLayoutConstraint.activate([
            coinAmountLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            coinAmountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }
    
    func setupCoinIcon() {
        coinIcon.image = UIImage(named: "PomoCoin")
        coinIcon.translatesAutoresizingMaskIntoConstraints = false
        
        placeCoinIcon()
    }
    
    func placeCoinIcon() {
        addSubview(coinIcon)
        
        NSLayoutConstraint.activate([
            coinIcon.trailingAnchor.constraint(equalTo: coinAmountLabel.leadingAnchor, constant: -10),
            coinIcon.centerYAnchor.constraint(equalTo: coinAmountLabel.centerYAnchor),
            coinIcon.heightAnchor.constraint(equalToConstant: 25),
            coinIcon.widthAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
