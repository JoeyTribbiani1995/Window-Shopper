//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Dũng Võ on 3/14/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourlyTextField: customTextField!
    @IBOutlet weak var priceTextField: customTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let calculateButton = UIButton(frame : CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        //get func , when you touch inside button
        calculateButton.addTarget(self, action: #selector (MainVC.calculate), for: .touchUpInside)
        
        hourlyTextField.inputAccessoryView = calculateButton // add button calculate
        priceTextField.inputAccessoryView = calculateButton
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
    }
    
    @objc func calculate(){
        if let hourtxt = hourlyTextField.text , let pricetxt = priceTextField.text {
                if let wage = Double(hourtxt) , let price = Double(pricetxt) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorButtonTapped(_ sender: UIButton) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        hourlyTextField.text = ""
        priceTextField.text = ""
        
    }
    
    
    
    
    
}

