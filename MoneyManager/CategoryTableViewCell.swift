//
//  CategoryTableViewCell.swift
//  MoneyManager
//
//  Created by Oybek Narzikulov on 08/02/23.
//

import UIKit
import SnapKit

class CategoryTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let reuseId = "CategoryTableViewCell"
    
    private lazy var categoryImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(named: "car")
        return image
        
    }()
    
    private lazy var categoryNameLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Auto & Transport"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
        
    }()
    
    private lazy var moneyLeftOnCategoryLabel: UILabel = {
       
        let label = UILabel()
        label.text = "$700 left"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 12)
        return label
        
    }()
    
    private lazy var moneySpendOnCategoryLabel: UILabel = {
       
        let label = UILabel()
        label.text = "$1200"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        return label
        
    }()
    
    private lazy var categoryMoneyCalcLabel: UILabel = {
       
        let label = UILabel()
        label.text = "$200 of 1200"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 12)
        return label
        
    }()
    
    
    
    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 15
        
        contentView.addSubview(categoryImage)
        contentView.addSubview(categoryNameLabel)
        contentView.addSubview(moneyLeftOnCategoryLabel)
        contentView.addSubview(moneySpendOnCategoryLabel)
        contentView.addSubview(categoryMoneyCalcLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0))
        
        categoryImage.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(20)
            make.width.height.equalTo(45)
        }
        
        categoryNameLabel.snp.makeConstraints { make in
            make.left.equalTo(categoryImage.snp.right).offset(10)
            make.top.equalTo(20)
        }
        
        moneyLeftOnCategoryLabel.snp.makeConstraints { make in
            make.left.equalTo(categoryImage.snp.right).offset(10)
            make.top.equalTo(categoryNameLabel.snp.bottom).offset(10)
        }
        
        moneySpendOnCategoryLabel.snp.makeConstraints { make in
            make.right.equalTo(-15)
            make.top.equalTo(20)
        }
        
        categoryMoneyCalcLabel.snp.makeConstraints { make in
            make.right.equalTo(-15)
            make.top.equalTo(moneySpendOnCategoryLabel.snp.bottom).offset(10)
        }
        
    }
    
    // MARK: - Helper Functions
    
}
