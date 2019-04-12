//
//  UnSafeArea.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/10/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

extension UIApplication {
    
    var statusBarView: UIView {
        return value(forKey: "statusBar") as! UIView
    }
}
