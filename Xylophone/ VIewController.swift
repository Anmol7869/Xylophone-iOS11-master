//
//  ViewController.swift
//  Xylophone
//
//  Created by Anmol Mallick on 27/07/2017.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var pianoSound1 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
    var Sound1audioPlayer = AVAudioPlayer()
    var pianoSound2 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note2", ofType: "wav")!)
    var Sound2audioPlayer = AVAudioPlayer()
    var pianoSound3 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note3", ofType: "wav")!)
    var Sound3audioPlayer = AVAudioPlayer()
    var pianoSound4 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note4", ofType: "wav")!)
    var Sound4audioPlayer = AVAudioPlayer()
    var pianoSound5 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note5", ofType: "wav")!)
    var Sound5audioPlayer = AVAudioPlayer()
    var pianoSound6 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note6", ofType: "wav")!)
    var Sound6audioPlayer = AVAudioPlayer()
    var pianoSound7 = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note7", ofType: "wav")!)
    var Sound7audioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn3: UIButton!
    @IBOutlet weak var Btn4: UIButton!
    @IBOutlet weak var Btn5: UIButton!
    @IBOutlet weak var Btn6: UIButton!
    @IBOutlet weak var Btn7: UIButton!
    
    
    @IBAction func likedThis(sender: UIButton) {
        
        if (sender.tag == 1){
            Sound1audioPlayer.play()
        }
        if(sender.tag == 2){
            Sound2audioPlayer.play()
        }
        if (sender.tag == 3){
            Sound3audioPlayer.play()
        }
        if (sender.tag == 4){
            Sound4audioPlayer.play()
        }
        if(sender.tag == 5){
            Sound5audioPlayer.play()
        }
        if (sender.tag == 6){
            Sound6audioPlayer.play()
        }
        if (sender.tag == 7){
            Sound7audioPlayer.play()
        }
        /*
         CFBundleRef mainBundle = CFBundleGetMainBundle();
         CFURLRef soundFileURLRef;
         soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"givewater", CFSTR ("wav"), NULL);
         UInt32 SoundID;
         AudioServicesCreateSystemSoundID(soundFileURLRef, &SoundID);
         AudioServicesPlaySystemSound(SoundID);*/
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Btn1.tag = 1;
        Btn2.tag = 2;
        Btn3.tag = 3;
        Btn4.tag = 4;
        Btn5.tag = 5;
        Btn6.tag = 6;
        Btn7.tag = 7;
        
        Sound1audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound1 as URL)
        Sound2audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound2 as URL)
        Sound3audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound3 as URL)
        Sound4audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound4 as URL)
        Sound5audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound5 as URL)
        Sound6audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound6 as URL)
        Sound7audioPlayer = try! AVAudioPlayer(contentsOf: pianoSound7 as URL)
        
        Sound1audioPlayer.prepareToPlay()
        Sound2audioPlayer.prepareToPlay()
        Sound3audioPlayer.prepareToPlay()
        Sound4audioPlayer.prepareToPlay()
        Sound5audioPlayer.prepareToPlay()
        Sound6audioPlayer.prepareToPlay()
        Sound7audioPlayer.prepareToPlay()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
