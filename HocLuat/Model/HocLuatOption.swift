//
//  MenuOption.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/8/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

enum HocLuatOption: Int, CustomStringConvertible {
    case TraLoiSai
    case DanhDau
    case KhaiNiem
    case NghiepVu
    case DaoDuc
    case KyThuat
    case CauTao
    case BienBao
    case SaHinh
    case TatCa
    
    var description: String {
        switch self {
            case .TraLoiSai:
                return "Những Câu Hay Trả Lời Sai"
            case .DanhDau:
                return "Những Câu Đánh Dấu"
            case .KhaiNiem:
                return "Khái Niệm Và Quy Tắc"
            case .NghiepVu:
                return "Nghiệp Vụ Vận Tải"
            case .DaoDuc:
                return "Đạo Đức Nghề Nghiệp"
            case .KyThuat:
                return "Kỹ Thuật Lái Xe"
            case .CauTao:
                return "Cấu Tạo Và Sửa Chữa"
            case .BienBao:
                return "Hệ Thống Biển Báo"
            case .SaHinh:
                return "Sa Hình"
            case .TatCa:
                return "Tất Cả 450 Câu Hỏi"
        }
    }
    
    var image: UIImage {
        switch self {
            case .TraLoiSai:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .DanhDau:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .KhaiNiem:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .NghiepVu:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .DaoDuc:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .KyThuat:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .CauTao:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .BienBao:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .SaHinh:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
            case .TatCa:
                return UIImage(named: "menu-hoc-luat.png") ?? UIImage()
        }
    }
    
}
