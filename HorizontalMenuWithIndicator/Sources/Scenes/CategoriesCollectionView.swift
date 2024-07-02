//
//  CategoriesCollectionView.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import UIKit

protocol CategoriesProtocol: AnyObject {
    func move(originX: CGFloat, width: CGFloat)
}


final class CategoriesCollectionView: UICollectionView {
    
    weak var categoriesDelegate: CategoriesProtocol?
    
    private let categoriesLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: categoriesLayout)
        
        configure()
        setupLayout()
        setDelegates()
        
        register(CategoriesCollectionViewCell.self,
                 forCellWithReuseIdentifier: CategoriesCollectionViewCell.cellID)
        selectItem(at: [0, 0], animated: false, scrollPosition: [])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configure

private extension CategoriesCollectionView {

    
    func setDelegates() {
        dataSource = self
        delegate = self
    }
    
    func setupLayout() {
        categoriesLayout.minimumInteritemSpacing = 5
        categoriesLayout.scrollDirection = .horizontal
    }
    
    func configure() {
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
        bounces = false
        showsHorizontalScrollIndicator = false
        isScrollEnabled = false
    }
}
