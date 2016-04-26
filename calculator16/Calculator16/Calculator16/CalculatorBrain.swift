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
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "√": Operation.UnaryOperation(sqrt)
//        "×": Operation.BinaryOperation( $0 * $1)
    ]
    

    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double,Double) -> Double)
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol]{
            switch operation {
            case .Constant(let associatedConstantValue): accumulator = associatedConstantValue
            case .UnaryOperation(let associatedFunction): accumulator = associatedFunction(accumulator)
            case .BinaryOperation: break
            case .Equals:break
            }
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}