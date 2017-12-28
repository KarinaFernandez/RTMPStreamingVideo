//
//  ViewController.swift
//  Basic Streaming App
//
//  Created by Karina on 26/12/2017.
//  Copyright © 2017 Karina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var player: VLCMediaPlayer!
    var audio_streaming = "rtmp://192.168.1.187/oflaDemo/audio";
    var video_streaming = "rtmp://192.168.1.187/oflaDemo/video";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = VLCMediaPlayer()
        player.media = VLCMedia(url: URL(string: audio_streaming)!)
        player.drawable = view
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !player.isPlaying {
            player.play()
        }
    }

}
