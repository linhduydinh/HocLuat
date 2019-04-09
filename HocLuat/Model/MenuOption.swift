//
//  MenuOption.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/8/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case HocLuat
    case ThiThu
    case MeoThi
    
    var description: String {
        switch self {
        case .HocLuat:
            return "Học Luật"
        case .ThiThu:
            return "Thi Thử"
        case .MeoThi:
            return "Mẹo Thi"
        }
    }
    
    var image: UIImage {
        switch self {
        case .HocLuat:
            return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
        case .ThiThu:
            return UIImage(named: "menu-thi-thu.png") ?? UIImage()
        case .MeoThi:
            return UIImage(named: "menu-meo.png") ?? UIImage()
        }
    }
    
}
