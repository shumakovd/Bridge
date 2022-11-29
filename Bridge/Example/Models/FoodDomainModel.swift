//
//  FoodDomainModel.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import UIKit
import Foundation

struct FoodDomainModel: Content {

    var title: String
    var images: [UIImage]
    var calories: Int

    var description: String {
        return "Food Model"
    }
}
