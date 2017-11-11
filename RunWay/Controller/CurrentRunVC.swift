//
//  CurrentRunVC.swift
//  RunWay
//
//  Created by Biswajit Banik on 11/10/17.
//  Copyright © 2017 Biswajit Banik. All rights reserved.
//

import UIKit

class CurrentRunVC: locationVC {

    @IBOutlet weak var sliderBGimageView: UIImageView!
    @IBOutlet weak var sliderbutton: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let swipegesture = UIGestureRecognizer(target: self, action: #selector(endRunSwiped(sender:)))
        sliderbutton.addGestureRecognizer(swipegesture)
        sliderbutton.isUserInteractionEnabled = true
        swipegesture.delegate = self as? UIGestureRecognizerDelegate
        
    
    
    
    
    }
    @objc func endRunSwiped (sender : UIPanGestureRecognizer) {
        let minAdjust: CGFloat = 80
        let maxAdjust: CGFloat = 130
        
        if let sliderView = sender.view {
            if sender.state == UIGestureRecognizerState.began || sender.state == UIGestureRecognizerState.changed {
                let translation = sender.translation(in: self.view)
                if sliderView.center.x >= (sliderBGimageView.center.x - minAdjust) && sliderView.center.x <= (sliderBGimageView.center.x + maxAdjust)
                {
                    sliderView.center.x = sliderView.center.x  + translation.x
                    
                    
                }else if sliderView.center.x >= (sliderBGimageView.center.x + maxAdjust){
                    
                    sliderView.center.x = sliderBGimageView.center.x + maxAdjust
                    
                } else {
                    
                    sliderView.center.x = sliderBGimageView.center.x - minAdjust
                }
                sender.setTranslation(CGPoint.zero, in: self.view)
                
            }
            
            
        }
        
    }
    

}
