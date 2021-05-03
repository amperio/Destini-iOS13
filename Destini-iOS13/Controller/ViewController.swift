//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var lbl_history: UILabel!
    @IBOutlet weak var btn_choice1: UIButton!
    @IBOutlet weak var btn_choice2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInterface()
    }

    @IBAction func actionButtons(_ sender: UIButton) {
        storyBrain.nextStory(optionUser: sender.currentTitle!)
        updateInterface()
    }
    
    func updateInterface() {
        lbl_history.text = storyBrain.getTitle()
        btn_choice1.setTitle(storyBrain.getChoice1(), for: .normal)
        btn_choice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

