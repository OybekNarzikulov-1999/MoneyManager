//
//  TableHeaderView.swift
//  MoneyManager
//
//  Created by Oybek Narzikulov on 08/02/23.
//

import UIKit
import SnapKit

class TableHeaderView: UIView {
    
    // MARK: - Properties
    
    private lazy var totalLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Total"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 14)
        return label
        
    }()
    
    private lazy var totalMoneySpendLabel: UILabel = {
       
        let label = UILabel()
        label.text = "$5,223.99"
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .semibold)
        return label
        
    }()
    
    private lazy var todayMoneySpendLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Today: -23.99"
        label.textColor = .red
        label.font = .systemFont(ofSize: 14)
        return label
        
    }()
    
    private lazy var addNewSpendButton: UIButton = {
       
        let button = UIButton(type: .system)
        
        button.backgroundColor = .link
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(addButtonTaped), for: .touchUpInside)
        return button
        
    }()
    
    
    
    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        
        self.addSubview(totalLabel)
        self.addSubview(totalMoneySpendLabel)
        self.addSubview(todayMoneySpendLabel)
        self.addSubview(addNewSpendButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        totalLabel.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.top.equalTo(15)
        }
        
        totalMoneySpendLabel.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.top.equalTo(totalLabel.snp.bottom).offset(15)
        }
        
        todayMoneySpendLabel.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.top.equalTo(totalMoneySpendLabel.snp.bottom).offset(15)
        }
        
        addNewSpendButton.snp.makeConstraints { make in
            make.right.equalTo(-20)
            make.top.equalTo(40)
            make.height.width.equalTo(60)
        }
        
    }
    
    // MARK: - Selectors
    
    @objc private func addButtonTaped() {
        
    }
    
    
}
