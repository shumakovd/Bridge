//
//  BaseViewController.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import UIKit
import Foundation

class BaseViewController: UIViewController, SharingSupportable {

    var shareService: SharingService?

    func update(content: Content) {
        /// ...updating UI and showing a content...
        /// ...
        /// ... then, a user will choose a content and trigger an event
        print("\(description): User selected a \(content) to share")
        /// ...
        shareService?.share(content: content)
    }

    func accept(service: SharingService) {
        shareService = service
    }
}
