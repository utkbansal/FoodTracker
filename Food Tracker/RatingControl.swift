//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Utkarsh Bansal on 10/03/16.
//  Copyright © 2016 Software Incubator. All rights reserved.
//

import UIKit

class RatingControl: UIView {

   // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        
        self.addSubview(button)
        
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }


}
