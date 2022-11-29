//
//  InstagramSharingService.swift
//  Bridge
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class InstagramSharingService: SharingService {

    func share(content: Content) {

        /// Use Instagram API to share a content
        print("Service: \(content) was posted to the Instagram", terminator: "\n\n")
    }
}
