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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = VLCMediaPlayer()
        player.media = VLCMedia(url: URL(string: "rtmp://192.168.1.187/oflaDemo/BladeRunner2049")!)
        player.drawable = view
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !player.isPlaying {
            player.play()
        }
    }

}
