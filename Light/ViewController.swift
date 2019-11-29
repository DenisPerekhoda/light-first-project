//
//  ViewController.swift
//  light
//
//  Created by Denis Perekhoda on 28.11.2019.
//  Copyright © 2019 Denis Perekhoda. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true

    @IBAction func ButtonPressed(_ sender: UIButton) {
            isLightOn = !isLightOn
        updateView()
    }
    
    func updateView() {
        
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = isLightOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        } else {
            view.backgroundColor = isLightOn ? .white : .black
        }
//        view.backgroundColor = lightOn ? .white : .black
        
//        if lightOn {view.backgroundColor = .white }
//        else { view.backgroundColor = .black}
    }
    
    override var prefersStatusBarHidden: Bool {
        return true }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateView()
    }
}

