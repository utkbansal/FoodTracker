//
//  RatingControl.swift
//  Food Tracker
//
//  Created by Utkarsh Bansal on 10/03/16.
//  Copyright © 2016 Software Incubator. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()

   // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        // Add a total of five buttons
        
        for _ in 0..<5{
            
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.redColor()
            
            // Beware of the action, it has a ':' in the end. Dont know why!
            button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
            ratingButtons += [button]
            self.addSubview(button)
            
        }
        
    }
    
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton){
        print("Button Tapped")
    }


}
