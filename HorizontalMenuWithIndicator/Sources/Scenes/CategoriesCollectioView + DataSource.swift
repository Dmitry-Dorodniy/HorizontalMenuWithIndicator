//
//  CategoriesCollectioView + DataSource.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import UIKit

extension CategoriesCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Categories.allCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CategoriesCollectionViewCell.cellID, 
            for: indexPath) as? CategoriesCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let name = Categories.allCases[indexPath.row].rawValue
        cell.setName(name)
    
        return cell
    }
    
    
    
}
