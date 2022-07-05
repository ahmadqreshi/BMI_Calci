//
//  BMIbrain.swift
//  BMIcalci
//
//  Created by Admin on 12/03/22.
//

import UIKit


struct BMIbrain{
    func calculateBMI(_ height : Float,_ weight : Float) -> Float{
        return weight/(height * height)
    }
}
