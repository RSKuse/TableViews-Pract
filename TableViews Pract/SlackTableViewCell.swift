//
//  SlackTableViewCell.swift
//  TableViews Pract
//
//  Created by Reuben Simphiwe Kuse on 2023/03/12.
//

import Foundation
import UIKit


class SlackTableViewCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Slack"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(labelStackView)
        
        accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        labelStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        labelStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        labelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
