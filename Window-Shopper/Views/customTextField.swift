//
//  customTextField.swift
//  Window-Shopper
//
//  Created by Dũng Võ on 3/14/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

@IBDesignable
class customTextField: UITextField {

    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencylbl = UILabel(frame : CGRect(x: 5, y: (frame.size.height / 2) - size / 2 , width: size, height: size))
        currencylbl.backgroundColor = #colorLiteral(red: 0.7913229695, green: 0.7913229695, blue: 0.7913229695, alpha: 0.8)
        currencylbl.textAlignment = .center
        currencylbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencylbl.layer.cornerRadius = 5.0
        currencylbl.clipsToBounds = true

        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencylbl.text = formatter.currencySymbol
        addSubview(currencylbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeTextField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeTextField()
        
    }
    
    func customizeTextField(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1964094606)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds  = true
        
        if let placeHolder = placeholder {
            let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
