//
//  ArticlesModel.swift
//  NYT
//
//  Created by Chiranjeet Das on 11/20/20.
//  Copyright © 2020 Chiranjeet Das. All rights reserved.
//

import Foundation

struct PopularArticlesModel: Codable {
    let status: String
    let results: [PopularArticleModel]
}

struct PopularArticleModel: Codable {
    let title: String
    let publishedDate: String
}
