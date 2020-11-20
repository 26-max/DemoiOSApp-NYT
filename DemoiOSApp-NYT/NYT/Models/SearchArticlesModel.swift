//
//  SearchArticleModels.swift
//  NYT
//
//  Created by Chiranjeet Das on 11/20/20.
//  Copyright © 2020 Chiranjeet Das. All rights reserved.
//

import Foundation

struct SearchArticlesModel : Codable {
    let status: String
    let response: Response
}

struct Response: Codable {
    let docs: [Docs]
}

struct Docs: Codable {
    let pubDate: String
    let headline: Headline
}

struct Headline: Codable {
    let main: String
}
