//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBOutlet weak var bonJoviImage: UIImageView!
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer)  {
        
        let totalSeconds = 1.0
        
        let durationOfAnimations = totalSeconds / 3.0
        
        let firstStartTime = 0.0
        let secondStartTime = firstStartTime + durationOfAnimations
        let thirdStartTime = secondStartTime + durationOfAnimations
        
        UIView.animateKeyframes(withDuration: totalSeconds, delay: 0.0,  animations: {
            
            UIView.addKeyframe(withRelativeStartTime: firstStartTime, relativeDuration: durationOfAnimations, animations: {
                self.bonJoviImage.bounds.size.height = self.bonJoviImage.bounds.size.height * 0.5
            })
            UIView.addKeyframe(withRelativeStartTime: secondStartTime, relativeDuration: durationOfAnimations, animations: {
                self.bonJoviImage.bounds.size.height = self.bonJoviImage.bounds.size.height  * 250
            })
            UIView.addKeyframe(withRelativeStartTime: thirdStartTime, relativeDuration: durationOfAnimations, animations: {
                self.bonJoviImage.bounds.size.height = self.view.bounds.size.height
            })
            
        })
        
        
        
    }
    
}

