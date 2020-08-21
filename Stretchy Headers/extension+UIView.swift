//
//  extension+UIView.swift
//  Stretchy Headers
//
//  Created by Adwait Barkale on 21/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func fillSuperview(withPadding padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if let superview = superview {
            topAnchor.constraint(equalTo: superview.topAnchor, constant: padding.top).isActive = true
            leftAnchor.constraint(equalTo: superview.leftAnchor, constant: padding.left).isActive = true
            rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -padding.right).isActive = true
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding.bottom).isActive = true
        }
    }
}
