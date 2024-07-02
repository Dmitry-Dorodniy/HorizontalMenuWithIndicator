//
//  CategoriesCollectionView + DelegateFlowLayout.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 01.07.2024.
//

import UIKit

extension CategoriesCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, 
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = Categories.allCases[indexPath.row].rawValue.defineWidth()
        
        return CGSize(width: width + 20, height: collectionView.frame.height)
    }
}
