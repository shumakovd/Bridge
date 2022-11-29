//
//  BridgeVC.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import UIKit
import Foundation

class BridgeVC: UIViewController {
    
    // MARK: - IBOutlets
            
    // MARK: - Properties
    
    var foodModel: Content {
        return FoodDomainModel(title: "This food is so various and delicious!",
                               images: [UIImage(), UIImage()],
                               calories: 47)
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testBridgeConceptual()
        testBridgeRealWorld()
    }
    
    // MARK: - Method from Concept
    
    func testBridgeConceptual() {
        // The client code should be able to work with any pre-configured
        // abstraction-implementation combination.
        let implementation = ConcreteImplementationA()
        Client.someClientCode(abstraction: Abstraction(implementation))
        
        let concreteImplementation = ConcreteImplementationB()
        Client.someClientCode(abstraction: ExtendedAbstraction(concreteImplementation))
    }
    
    
    // MARK: - Methods from Example
    
    func testBridgeRealWorld() {
        
        print("Client: Pushing Photo View Controller...")
        push(PhotoViewController())
        
        print()
        
        print("Client: Pushing Feed View Controller...")
        push(FeedViewController())
    }
    
    func push(_ container: SharingSupportable) {
        
        let instagram = InstagramSharingService()
        let facebook = FaceBookSharingService()
        
        container.accept(service: instagram)
        container.update(content: foodModel)
        
        container.accept(service: facebook)
        container.update(content: foodModel)
    }
       
}

