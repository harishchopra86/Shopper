//
//  CurrencyTextField.swift
//  Shopper
//
//  Created by Harish Chopra on 2017-11-15.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }

func customizeView() {
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2474141725)
    layer.cornerRadius = 5.0
    textAlignment = .center
    textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    if let place = placeholder {
        let place = NSAttributedString(string: place, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
    }
    
}
}
