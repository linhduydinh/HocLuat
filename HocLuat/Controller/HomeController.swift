//
//  HomeController.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/7/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor(red: 42/255, green: 210/255, blue: 201/255, alpha: 1.0)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu-bar.png")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
