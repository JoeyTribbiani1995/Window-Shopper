//
//  customTextField.swift
//  Window-Shopper
//
//  Created by Dũng Võ on 3/14/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

class customTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1964094606)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let placeHolder = placeholder {
            let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
