//
//  Slide.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/11/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

class Slide: UIView {

    @IBOutlet weak var questionName: UILabel!
    
    @IBOutlet weak var favoriteButton: UIButton!
    
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var resultButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var moreButton: UIButton!
    
    @IBOutlet weak var bottomHeight: NSLayoutConstraint!
    
    @IBOutlet weak var favoriteButtonBottom: NSLayoutConstraint!
    @IBOutlet weak var backButtonBottom: NSLayoutConstraint!
    @IBOutlet weak var resultButtonBottom: NSLayoutConstraint!
    @IBOutlet weak var nextButtonBottom: NSLayoutConstraint!
    @IBOutlet weak var moreButtonBottom: NSLayoutConstraint!
    
    @IBOutlet weak var questionNameTop: NSLayoutConstraint!
    
    override func updateConstraints() {
        var bottomSafeArea: CGFloat
        var topSafeArea: CGFloat
        var buttonBottomSize = 0
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            topSafeArea = (window?.safeAreaInsets.top)!
            bottomSafeArea = (window?.safeAreaInsets.bottom)!
        } else {
            topSafeArea = 0
            bottomSafeArea = 0
        }
        if bottomSafeArea > 0 {
            buttonBottomSize = 20
        }
        
        questionNameTop.constant  = questionNameTop.constant + topSafeArea
        
        bottomHeight.constant = bottomHeight.constant + bottomSafeArea
        
        favoriteButtonBottom.constant = favoriteButtonBottom.constant + CGFloat(buttonBottomSize)
        backButtonBottom.constant = backButtonBottom.constant + CGFloat(buttonBottomSize)
        resultButtonBottom.constant = resultButtonBottom.constant + CGFloat(buttonBottomSize)
        nextButtonBottom.constant = nextButtonBottom.constant + CGFloat(buttonBottomSize)
        moreButtonBottom.constant = moreButtonBottom.constant + CGFloat(buttonBottomSize)


        super.updateConstraints()
    }

}
