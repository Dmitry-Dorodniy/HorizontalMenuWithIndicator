//
//  CategoriesCollectionView + Delegate.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import UIKit

extension CategoriesCollectionView: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        UIView.animate(withDuration: 0.4) {
            self.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: false)
        }
        
        guard let attributes = collectionView.layoutAttributesForItem(at: indexPath) else { return }
        let cellRect = attributes.frame
        let cellFrameInSuperView = collectionView.convert(cellRect, to: collectionView.superview)
        
        categoriesDelegate?.move(originX: cellFrameInSuperView.origin.x,
                                 width: cellFrameInSuperView.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
//        Чтобы ячейка не съезжала вниз с анимацией
        CategoriesCollectionViewCell.performWithoutAnimation {
            cell.layoutIfNeeded()
        }
    }
}
