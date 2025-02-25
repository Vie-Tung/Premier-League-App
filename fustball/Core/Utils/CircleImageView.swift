//
//  CircleImageView.swift
//  fustball
//
//  Created by Tung Viet on 25/2/25.
//

import UIKit

class CircleImageView: UIImageView {
    override func layoutSubviews() {
        layer.masksToBounds = false
        layer.cornerRadius = frame.size.height / 2
        clipsToBounds = true
    }
}
