//
//  WatchKitInfo.swift
//  PlayThatSong
//
//  Created by Scott Taylor on 28/04/2015.
//  Copyright (c) 2015 Carnaby Labs. All rights reserved.
//

import Foundation

class WatchKitInfo {
    
    var replyBlock: ([NSObject : AnyObject]!) -> Void
    
    init (playerDictionary: [NSObject : AnyObject], reply: ([NSObject : AnyObject]!) -> Void) {
        replyBlock = reply
    }
}