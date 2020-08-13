//
//  playSound.swift
//  swiftUInotes
//
//  Created by Anousha Farshid on 6/12/20.
//  Copyright © 2020 Anousha Farshid. All rights reserved.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playSound(key: String){
    let url = Bundle.main.url(forResource: key, withExtension: "mp3")
    
    guard url != nil else{
        return
    }

    do{
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()
    }catch{
        print("error")
    }
}
