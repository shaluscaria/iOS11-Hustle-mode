//
//  ViewController.swift
//  Hustle-mode
//
//  Created by Shalu Scaria on 2018-05-28.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet var cloudHolderView: UIView!
    @IBOutlet var darkBlueBG: UIImageView!
    @IBOutlet var powerBtn: UIButton!
    @IBOutlet var modeOnLbl: UILabel!
    @IBOutlet var hustleModeLbl: UILabel!
    @IBOutlet var rocketAndStream: UIImageView!
    
    var player : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType:  "wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError{
            print(error.description)
        }
    }

    
    @IBAction func powerBtnPressesd(_ sender: UIButton) {
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        cloudHolderView.isHidden = false
        self.player.play()
        UIView.animate(withDuration: 2.3, animations: {
            
            self.rocketAndStream.frame = CGRect(x: 0, y: 130, width: 375, height: 402)
        }) { (finished) in
            self.hustleModeLbl.isHidden = false
            self.modeOnLbl.isHidden = false
        }
    }
    
    
}

