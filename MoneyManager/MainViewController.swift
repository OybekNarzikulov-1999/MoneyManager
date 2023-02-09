//
//  MainViewController.swift
//  MoneyManager
//
//  Created by Oybek Narzikulov on 06/02/23.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    let array = ["Elephant", "Fish", "Rabbit", "Whale", "Shark", "Horse","Elephant", "Fish", "Rabbit", "Whale", "Shark", "Horse"]
    
    private lazy var mainCard: TableHeaderView = {
       
        let card = TableHeaderView()
        card.layer.cornerRadius = 15
        return card
        
    }()
    
    private let tableView: UITableView = {
       
        let tableView = UITableView()
        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: CategoryTableViewCell.reuseId)
        tableView.backgroundColor = .white
        tableView.layer.cornerRadius = 15
        tableView.separatorStyle = .none
        tableView.backgroundColor = .lightGray
        tableView.showsVerticalScrollIndicator = false
        return tableView
        
    }()
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        
        view.addSubview(mainCard)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        
        mainCard.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.width.equalTo(view.snp.width).offset(-20)
            make.height.equalTo(140)
        }
        
        tableView.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.top.equalTo(mainCard.snp.bottom).offset(20)
            make.width.equalTo(view.snp.width).offset(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    

    // MARK: - Selectors
    
    
    // MARK: - Helper Methods

}


extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.reuseId, for: indexPath) as! CategoryTableViewCell
        cell.backgroundColor = .lightGray
        cell.layer.cornerRadius = 15
        cell.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var y = scrollView.contentOffset.y
    }
    
}

// EURUSD - 10709 short D
// XAUUSD - short

// CL_BRENT - GOLD - NGAS - SnP - торгуем от очень сильных уровней

// 90-334-40-40 abdulaziz
