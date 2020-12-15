//
//  TimerView.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit

class TimerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
