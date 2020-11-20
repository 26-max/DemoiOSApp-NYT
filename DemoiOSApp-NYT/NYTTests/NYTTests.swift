//
//  NYTTests.swift
//  NYTTests
//
//  Created by Chiranjeet Das on 11/20/20.
//  Copyright © 2020 Chiranjeet Das. All rights reserved.
//

import XCTest
@testable import NYT

class NYTTests: XCTestCase {

    var sut: ArticleViewModel!
    
    override func setUp() {
        super.setUp()
        sut = ArticleViewModel()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }

    // -- Test Most Viewed Articles API
    func testMostViewedAPI() {
        let promise = expectation(description: "Most Viewed Articles Count > 0")
        
        // -- call fetch mostViewed articles API
        sut.fetchPopularArticles(popularCat: .MOST_VIEWED) { errorString in
            if errorString.count == 0 {
                promise.fulfill()
            } else {
                XCTFail("Error: \(errorString)")
            }
        }
        
        // -- Wait for API to finish
        wait(for: [promise], timeout: 6)
    }
    
    // -- Test Most Shared Articles API
    func testMostSharedAPI() {
        let promise = expectation(description: "Most Shared Articles Count > 0")
        
        // -- call fetch mostShared articles API
        sut.fetchPopularArticles(popularCat: .MOST_SHARED) { errorString in
            if errorString.count == 0 {
                promise.fulfill()
            } else {
                XCTFail("Error: \(errorString)")
            }
        }
        
        // -- Wait for API to finish
        wait(for: [promise], timeout: 6)
    }
    
    // -- Test Most Emailed Articles API
    func testMostEmailedAPI() {
        let promise = expectation(description: "Most Emailed Articles Count > 0")
        
        // -- call fetch mostEmailed articles API
        sut.fetchPopularArticles(popularCat: .MOST_EMAILED) { errorString in
            if errorString.count == 0 {
                promise.fulfill()
            } else {
                XCTFail("Error: \(errorString)")
            }
        }
        
        // -- Wait for API to finish
        wait(for: [promise], timeout: 6)
    }
    
    // -- Test Search Articles API
    func testSearchArticlesAPI() {
        let promise = expectation(description: "Search Articles Count > 0")
        
        // -- call search articles API
        sut.fetchSearchArticles(searchText: "virus") { errorString in
            if errorString.count == 0 {
                promise.fulfill()
            } else {
                XCTFail("Error: \(errorString)")
            }
        }
        
        // -- Wait for API to finish
        wait(for: [promise], timeout: 6)
    }
}
