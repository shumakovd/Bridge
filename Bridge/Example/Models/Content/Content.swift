//
//  Content.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import UIKit
import Foundation

protocol Content: CustomStringConvertible {

    var title: String { get }
    var images: [UIImage] { get }
}
