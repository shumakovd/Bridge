//
//  ExtendedAbstraction.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// You can extend the Abstraction without changing the Implementation classes.
class ExtendedAbstraction: Abstraction {

    override func operation() -> String {
        let operation = implementation.operationImplementation()
        return "ExtendedAbstraction: Extended operation with:\n" + operation
    }
}
