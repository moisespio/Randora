//
//  CustomUIView.swift
//  Randora
//
//  Created by Moisés Pio on 4/21/16.
//  Copyright © 2016 MPIO.ME. All rights reserved.
//

import UIKit

@IBDesignable class CustomUIView: UIView {
    @IBInspectable var borderWidth: CGFloat = 0
    @IBInspectable var borderColor: UIColor = UIColor.whiteColor()
    @IBInspectable var cornerRadius: CGFloat = 0
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 0)
    @IBInspectable var shadowOpacity: Float = 0
    @IBInspectable var shadowRadius: CGFloat = 0
    @IBInspectable var clipToBounds: Bool = true
    
    override func drawRect(rect: CGRect) {
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor.CGColor
        self.layer.cornerRadius = self.cornerRadius
        self.layer.shadowOffset = self.shadowOffset
        self.layer.shadowOpacity = self.shadowOpacity
        self.layer.shadowRadius = self.shadowRadius
        
        self.clipsToBounds = self.clipToBounds
    }
}
