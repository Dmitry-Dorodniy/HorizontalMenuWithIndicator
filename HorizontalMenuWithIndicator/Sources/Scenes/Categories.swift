//
//  Categories.swift
//  HorizontalMenuWithIndicator
//
//  Created by Dmitry Dorodniy on 17.06.2024.
//

import Foundation

enum Categories: String, CaseIterable {
    case post = "Posts"
    case answer = "Answers"
    case favorites = "Favorites"
    case articles = "Articles"
    case media = "Media"
    case like = "Like"
}

extension Categories {
    static var allCategories: [String] {
        Categories.allCases.map { $0.rawValue }
    }
}

