//
//  CalculatorBrain.swift
//  Calculator16
//
//  Created by Chongwei Liu on 4/24/16.
//  Copyright © 2016 Dancite. All rights reserved.
//

import Foundation

class CalculatorBrain{
    
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
        
    }
    
    var operations: Dictionary<String, Operation> = [
        "π": Operation.Constant,
        "e": Operation.Constant
    ]
    

    
    enum Operation {
        case Constant
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol]{
            switch operation {
            case .Constant:
                
            default:
                <#code#>
            }
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
    
}