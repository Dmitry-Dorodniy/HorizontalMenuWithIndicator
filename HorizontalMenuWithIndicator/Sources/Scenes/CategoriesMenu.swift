//
//  CategoriesMenu.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import UIKit


final class CategoriesMenu: UIView, UICollectionViewDelegate {
    
    
    private lazy var categoriesCollectionView: CategoriesCollectionView = {
        let view = CategoriesCollectionView()
        view.categoriesDelegate = self
//        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var widthConstraint = NSLayoutConstraint()
    private var leadingConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        setupHierarhy()
        setupLayout()
        lineViewConfigure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension CategoriesMenu {
    func animateLineView(originX: CGFloat, width: CGFloat) {
        widthConstraint.constant = width
        leadingConstraint.constant = originX
        UIView.animate(withDuration: 0.3) {
            self.layoutIfNeeded()
        }
    }
}

extension CategoriesMenu: CategoriesProtocol {
    func move(originX: CGFloat, width: CGFloat) {
        print(originX, width)
        animateLineView(originX: originX, width: width)
    }
}

private extension CategoriesMenu {
    func setupHierarhy() {
        addSubview(categoriesCollectionView)
        addSubview(lineView)
    }
    
    func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoriesCollectionView.topAnchor.constraint(equalTo: topAnchor),
            categoriesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            categoriesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            categoriesCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 3)
        ])
    }
    
    func lineViewConfigure() {
        let initialWidth = Categories.allCases[0].rawValue.defineWidth()
        widthConstraint = lineView.widthAnchor.constraint(equalToConstant: initialWidth + 20)
        leadingConstraint = lineView.leadingAnchor.constraint(equalTo: leadingAnchor)
        widthConstraint.isActive = true
        leadingConstraint.isActive = true
    }
}
