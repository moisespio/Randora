//
//  ViewController.swift
//  Randora
//
//  Created by Moisés Pio on 4/21/16.
//  Copyright © 2016 MPIO.ME. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {
    @IBOutlet weak var viewButtonContainer: UIView!
    var blur: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewButtonContainer.layer.cornerRadius = viewButtonContainer.frame.width / 2
        viewButtonContainer.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).CGColor
        viewButtonContainer.layer.borderWidth = 3
        
        blur = UIVisualEffectView (effect: UIBlurEffect (style: UIBlurEffectStyle.Light))

        blur.frame = self.viewButtonContainer.frame
        blur.alpha = 1
        blur.userInteractionEnabled = false
        
        viewButtonContainer.addSubview(blur)
        viewButtonContainer.clipsToBounds = true
    }
    
    @IBAction func tappedCameraButton(sender: UIButton) {
    }
    
    @IBAction func tappedNewPhotoButton(sender: UIButton) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

