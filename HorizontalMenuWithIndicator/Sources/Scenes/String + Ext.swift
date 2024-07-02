//
//  String + Ext.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import UIKit

extension String {
    func defineWidth() -> CGFloat {
        let font = UIFont(name: "Arial Bold", size: 18)
        let attributes = [NSAttributedString.Key.font : font as Any]
        return self.size(withAttributes: attributes).width
    }
}
