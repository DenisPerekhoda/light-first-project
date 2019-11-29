//
//  ViewController.swift
//  light
//
//  Created by Denis Perekhoda on 28.11.2019.
//  Copyright © 2019 Denis Perekhoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = false

    @IBAction func ButtonPressed(_ sender: UIButton) {
            lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        
        view.backgroundColor = lightOn ? .white : .black
        
//        if lightOn {view.backgroundColor = .white }
//        else { view.backgroundColor = .black}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateUI()
    }
}

