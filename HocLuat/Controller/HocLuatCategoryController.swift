//
//  HocLuatController.swift
//  HocLuat
//
//  Created by Linh Dinh on 4/9/19.
//  Copyright © 2019 Linh Dinh. All rights reserved.
//

import UIKit

private let reuseIdentifer = "HocLuatOptionCell"

class HocLuatCategoryController: UIViewController {
    
    // MARK: - Properties
    var tableView: UITableView!
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureTableView()
    }
    
    // MARK: - Handlers
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HocLuatOptionCell.self, forCellReuseIdentifier: reuseIdentifer)
        tableView.backgroundColor = .white
        //tableView.separatorStyle = .none
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.rowHeight = 80
        tableView.tableFooterView = UIView(frame: .zero)
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    func configureUI() {
        view.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 42/255, green: 210/255, blue: 201/255, alpha: 1.0)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Học Luật"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back.png")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
}

extension HocLuatCategoryController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! HocLuatOptionCell
        let hocLuatOption = HocLuatOption(rawValue: indexPath.row)
        cell.descLabel.text = hocLuatOption?.description
        cell.iconImageView.image = hocLuatOption?.image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! HocLuatOptionCell
        print(cell.descLabel)
        let controller = HocLuatController()
        present(UINavigationController(rootViewController: controller), animated: true, completion: nil)
    }
    
}
