//
//  CategoriesCollectionViewCell.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import UIKit

final class CategoriesCollectionViewCell: UICollectionViewCell {
//    private let categoryNameLabel = UILabel()
    static let cellID = "CategoriesCollectionViewCell"
    
    override var isSelected: Bool {
        didSet {
            categoryNameLabel.textColor = isSelected ? .white : .gray
        }
    }
    
    private lazy var categoryNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .gray
        label.font = UIFont(name: "Arial Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setName(_ name: String) {
        categoryNameLabel.text = name
    }
}

// MARK: - Configure

private extension CategoriesCollectionViewCell {
    
    func setupHierarchy() {
        addSubview(categoryNameLabel)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            
            categoryNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            categoryNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
//    func categoryNameLabelConfigure() {
//        categoryNameLabel.textAlignment = .center
//        categoryNameLabel.textColor = .gray
//        categoryNameLabel.font = UIFont(name: "Arial Bold", size: 18)
//        cat
//    }
}
