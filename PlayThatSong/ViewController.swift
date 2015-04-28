//
//  ViewController.swift
//  PlayThatSong
//
//  Created by Scott Taylor on 28/04/2015.
//  Copyright (c) 2015 Carnaby Labs. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var currentSongLabel: UILabel!
    
    var audioSession: AVAudioSession!
//    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureAudioSession()
        self.configureAudioPlayer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Mark: - IBActions
    
    @IBAction func playButtonPressed(sender: UIButton) {
        self.playMusic()
        
    }
    @IBAction func playPreviousButtonPressed(sender: UIButton) {
        
    }
    
    @IBAction func playNextButtonPressed(sender: UIButton) {
        
    }
    
    //Mark: - Audio
    
    func configureAudioSession () {
        self.audioSession = AVAudioSession.sharedInstance()
        
        var categoryError: NSError?
        var activeError: NSError?
        
        self.audioSession.setCategory(AVAudioSessionCategoryPlayback, error: &categoryError)
        println("error \(categoryError)")
        
        var success = self.audioSession.setActive(true, error: &activeError)
        if !success {
            println("Error making audio session active \(activeError)")
        }
    }
    
//    func configureAudioPlayer (){
//        
//        var songPath = NSBundle.mainBundle().pathForResource("Destiny (Fresh Direct's Chillstep Re", ofType: "mp3")
//        var songURL = NSURL.fileURLWithPath(songPath!)
//        
//        println("songURL: \(songURL)")
//        
//        var songError: NSError?
//        self.audioPlayer = AVAudioPlayer(contentsOfURL: songURL, error: &songError)
//        println("song error: \(songError)")
//        self.audioPlayer.numberOfLoops = 0
//        
//    }
    
    func playMusic () {
        
//        self.audioPlayer.prepareToPlay()
//        self.audioPlayer.play()
        
    }

    func createSongs () -> [AnyObject] {
        
        let firstSongPath = NSBundle.mainBundle().pathForResource("Destiny (Fresh Direct's Chillstep Re", ofType: "mp3")
        let secondSongPath = NSBundle.mainBundle().pathForResource("Nhumo_En mi Nube", ofType: "mp3")
        let thirdSongPath = NSBundle.mainBundle().pathForResource("Nhumo_Weeping Willow", ofType: "mp3")
        
        let firstSongURL = NSURL.fileURLWithPath(firstSongPath!)
        let secondSongURL = NSURL.fileURLWithPath(secondSongPath!)
        let thirdSongURL = NSURL.fileURLWithPath(thirdSongPath!)
        
        let firstPlayItem = AVPlayerItem(URL: firstSongURL)
        let secondPlayItem = AVPlayerItem(URL: secondSongURL)
        let thirdPlayItem = AVPlayerItem(URL: thirdSongURL)
        
        let songs: [AnyObject] = [firstPlayItem, secondPlayItem, thirdPlayItem]
        
        return songs
    }
    
}

