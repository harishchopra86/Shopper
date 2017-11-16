//
//  Wage.swift
//  Shopper
//
//  Created by Harish Chopra on 2017-11-15.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price/wage))
    }
}
