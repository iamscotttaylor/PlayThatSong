//
//  WatchKitInfo.swift
//  PlayThatSong
//
//  Created by Scott Taylor on 28/04/2015.
//  Copyright (c) 2015 Carnaby Labs. All rights reserved.
//

import Foundation

let key = "FunctionRequestKey"

class WatchKitInfo {
    
    var replyBlock: ([NSObject : AnyObject]!) -> Void
    var playerRequest: String?
    
    init (playerDictionary: [NSObject : AnyObject], reply: ([NSObject : AnyObject]!) -> Void) {
    
        if let playerDictionary = playerDictionary as? [String : String] {
            playerRequest = playerDictionary[key]
        } else {
            println("No Information Error")
        }
        
        replyBlock = reply
    }
}