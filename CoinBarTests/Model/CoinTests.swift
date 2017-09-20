//
//  CoinTests.swift
//  CoinBarTests
//
//  Created by Adam Waite on 19/09/2017.
//  Copyright © 2017 adamjwaite.co.uk. All rights reserved.
//

import XCTest
@testable import CoinBar

final class CoinTests: XCTestCase {
    
    // MARK: - <Equatable>
    
    func test_equatable_idEqual_isTrue() {
        let a = Coin.bitcoin
        let b = Coin.bitcoin
        XCTAssertTrue(a == b)
    }
    
    func test_equatable_idNotEqual_isFalse() {
        let a = Coin.bitcoin
        let b = Coin.ethereum
        XCTAssertFalse(a == b)
    }
    
    // MARK: - <Codable>
    
    func test_codable_encodesAndDecodesCorrectly() {
        let coinData = JSONFixtures.coin()
        
        let decoder = JSONDecoder()
        let decoded = try! decoder.decode(Coin.self, from: coinData)
        XCTAssertEqual(decoded.id, "bitcoin")
        XCTAssertEqual(decoded.name, "Bitcoin")
        XCTAssertEqual(decoded.symbol, "BTC")
        XCTAssertEqual(decoded.priceUSD, "4000.55")
        XCTAssertEqual(decoded.priceBTC, "1.0")
        XCTAssertEqual(decoded.percentChange1h, "0.05")
        XCTAssertEqual(decoded.percentChange24h, "0.83")
        XCTAssertEqual(decoded.percentChange7d, "2.82")
        XCTAssertEqual(decoded.pricePreferredCurrency, "2945.42494025")
        
        let encoder = JSONEncoder()
        let encoded = try! encoder.encode(decoded)
        let redecoded = try! decoder.decode(Coin.self, from: encoded)
        XCTAssertEqual(redecoded.id, "bitcoin")
        XCTAssertEqual(redecoded.name, "Bitcoin")
        XCTAssertEqual(redecoded.symbol, "BTC")
        XCTAssertEqual(redecoded.priceUSD, "4000.55")
        XCTAssertEqual(redecoded.priceBTC, "1.0")
        XCTAssertEqual(redecoded.percentChange1h, "0.05")
        XCTAssertEqual(redecoded.percentChange24h, "0.83")
        XCTAssertEqual(redecoded.percentChange7d, "2.82")
        XCTAssertEqual(redecoded.pricePreferredCurrency, "2945.42494025")
    }
}
