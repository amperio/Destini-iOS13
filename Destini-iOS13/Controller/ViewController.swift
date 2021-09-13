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

// OPCION 2 - USANDO DICCIONARIO
/*
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblHistoria: UILabel!
    @IBOutlet weak var btnoChoice1: UIButton!
    @IBOutlet weak var btnoChoice2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func btn_choices(_ sender: UIButton) {
        storyBrain.checkChoide(sender.tag)
        updateUI()
    }
    
    func updateUI() {
        lblHistoria.text = storyBrain.getHistory()
        btnoChoice1.setTitle(storyBrain.getTextChoice()[0], for: .normal)
        btnoChoice2.setTitle(storyBrain.getTextChoice()[1], for: .normal)
    }
}
*/












//                ___                  ___ 
//               -   -________________-   -
//             /----.       AMP        .----\
//            (  __  |                |  __  )
//            | (@ ) |                | ( @) |
//           /\\____//                \\____//\
//          /              *:   :*             \
//          \`\ ____________________________ /`/
//           \                                /
//            \    $$$$$$$$$$$$$$$$$$$$$$    /
//             \    $$$$$$$$$$$$$$$$$$$$    /
//              -__  $$$$$$$$$$$$$$$$$$  __-
//                  -_$$$$$$$$$$$$$$$$_-





