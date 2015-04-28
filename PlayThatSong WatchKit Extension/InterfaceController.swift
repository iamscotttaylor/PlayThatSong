//
//  InterfaceController.swift
//  PlayThatSong WatchKit Extension
//
//  Created by Scott Taylor on 28/04/2015.
//  Copyright (c) 2015 Carnaby Labs. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var songTitleLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //Mark - IBActions 
    
    
    @IBAction func previousSongButtonPressed() {
        
    }
    
    @IBAction func nextSongButtonPressed() {
        
    }
    
    @IBAction func playSongButtonPressed() {
        
        
        
    }

}
