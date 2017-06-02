//
//  ViewController.swift
//  DebugInformation
//
//  Created by Eric Miller on 6/2/17.
//  Copyright © 2017 Tiny Zepplin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func prepareDebugInformation(_ sender: UIButton) {
        DebugOverlay.prepareForPresentation()
    }
    
    @IBAction func toggleDebugOverlay(_ sender: UIButton) {
        DebugOverlay.toggleVisibility()
    }
}

