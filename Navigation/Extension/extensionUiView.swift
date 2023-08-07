//
//  extensionUiView.swift
//  Navigation
//
//  Created by Nikolay on 07.08.2023.
//

import UIKit

public extension UIView {
    func addSubviews(_ subviews: UIView...) {
        for i in subviews {
            self.addSubview(i)
        }
    }
}
