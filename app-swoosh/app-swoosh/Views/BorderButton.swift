//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Mohamed Elmowafy on 24/04/2021.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
