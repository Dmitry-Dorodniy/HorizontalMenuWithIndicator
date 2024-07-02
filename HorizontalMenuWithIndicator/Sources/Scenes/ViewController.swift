//
//  ViewController.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 13.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let categoriesMenu = CategoriesMenu()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
    }
}

private extension ViewController {
    // MARK: - Setup View
    func setupHierarchy() {
        view.addSubview(categoriesMenu)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            categoriesMenu.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            categoriesMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            categoriesMenu.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            categoriesMenu.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func setupView() {
        view.backgroundColor = .black
    }
}

#Preview {
    ViewController()
}
