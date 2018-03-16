//
//  Wage.swift
//  Window-Shopper
//
//  Created by Dũng Võ on 3/16/18.
//  Copyright © 2018 Dũng Võ. All rights reserved.
//

import Foundation

class Wage {
    class func getHours( forWage wage : Double , andPrice price : Double) -> Int {
        return Int(ceil(price/wage))
    }
}
