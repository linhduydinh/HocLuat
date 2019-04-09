//
//  MenuOptionCell.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/8/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

class HocLuatOptionCell: UITableViewCell {

    // MARK: - Properties
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let descLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        addSubview(iconImageView)
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 36).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 36).isActive = true
        
        addSubview(descLabel)
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        descLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 10).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Handlers

}
