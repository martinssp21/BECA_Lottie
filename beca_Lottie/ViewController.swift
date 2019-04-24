//
//  ViewController.swift
//  beca_Lottie
//
//  Created by Rodrigo Martins on 04/04/19.
//  Copyright © 2019 Rodrigo Martins. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var viewAnimada: LOTAnimatedControl!
    
    @IBOutlet weak var switchButton: LOTAnimatedSwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimation()
        setupSwitch()
    }
    
    func setupAnimation(){
        viewAnimada.animationView.setAnimation(named: "beer")
        viewAnimada.animationView.loopAnimation = true
        viewAnimada.animationView.play()
    }

    func setupSwitch(){
        switchButton.animationView.setAnimation(named: "toggle-switch")
        switchButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(toggleButton(_ :))))
    }

    @objc func toggleButton(_ gesture: UITapGestureRecognizer){
        switchButton.isOn = !switchButton.isOn
        switchButton.isOn ? switchButton.animationView.play(fromProgress: 0, toProgress: 0.25, withCompletion: nil) :
            switchButton.animationView.play(fromProgress: 0.25, toProgress: 0, withCompletion: nil)
        
    }
}
