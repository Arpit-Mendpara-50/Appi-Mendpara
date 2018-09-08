//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Arpit on 02/09/18.
//  Copyright © 2018 Arpit. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBAction func SpeakButton(_ sender: UIButton) {
        let string = inputField.text
        let utterance = AVSpeechUtterance(string: string!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        let synth = AVSpeechSynthesizer()
        synth.speak(utterance)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

