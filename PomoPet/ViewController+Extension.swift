//
//  ViewController+Extension.swift
//  PomoPet
//
//  Created by Alexis Orellano on 12/14/20.
//

import UIKit

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
}
