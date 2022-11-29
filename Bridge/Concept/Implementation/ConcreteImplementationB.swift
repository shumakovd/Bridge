//
//  ConcreteImplementationB.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// Each Concrete Implementation corresponds to a specific platform and
/// implements the Implementation interface using that platform's API.
class ConcreteImplementationB: Implementation {
    
    func operationImplementation() -> String {
        return "ConcreteImplementationB: Here's the result on the platform B\n"
    }
}
