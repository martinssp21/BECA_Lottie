//
//  ScrollAnimation.swift
//  beca_Lottie
//
//  Created by Rodrigo Martins on 04/04/19.
//  Copyright © 2019 Rodrigo Martins. All rights reserved.
//

import UIKit
import Lottie

class ScrollAnimation: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var viewAnimation: LOTAnimatedControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()

        // Do any additional setup after loading the view.
    }
    
    func setupAnimation(){
        viewAnimation.animationView.setAnimation(named: "galaxy")
        viewAnimation.animationView.contentMode = .scaleAspectFill
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: self.view.frame.width * 6, height: self.view.frame.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let progress = scrollView.contentOffset.x / scrollView.contentSize.width
        
        viewAnimation.animationView.animationProgress = CGFloat(progress)
    }

}
