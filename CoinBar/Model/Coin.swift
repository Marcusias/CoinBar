//
//  Coin.swift
//  CoinBar
//
//  Created by Adam Waite on 16/09/2017.
//  Copyright © 2017 adamjwaite.co.uk. All rights reserved.
//

import Foundation

struct Coin: Codable {
    
    // MARK: - JSON Properties

    let id: String
    let name: String
    let symbol: String
    let rank: String
    let priceUSD: String
    let priceBTC: String
//    let priceUserCurrency: String
    let percentChange1h: String?
    let percentChange24h: String?
    let percentChange7d: String?

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case symbol
        case rank
        case priceUSD = "price_usd"
        case priceBTC = "price_btc"
        case percentChange1h = "percent_change_1h"
        case percentChange24h = "percent_change_24h"
        case percentChange7d = "percent_change_7d"
    }
    
    // MARK: - Computed Properties
    
    var url: URL? {
        return URL(string: "https://coinmarketcap.com/currencies/\(id)/")
    }
    
    var imageURL: URL? {
        return URL(string: "https://files.coinmarketcap.com/static/img/coins/32x32/\(id).png")
    }
    
    var rankValue: Int {
        return Int(rank)!
    }
    
}


/*
 
 {
    "id": "bitcoin",
    "name": "Bitcoin",
    "symbol": "BTC",
    "rank": "1",
    "price_usd": "573.137",
    "price_btc": "1.0",
    "24h_volume_usd": "72855700.0",
    "market_cap_usd": "9080883500.0",
    "available_supply": "15844176.0",
    "total_supply": "15844176.0",
    "percent_change_1h": "0.04",
    "percent_change_24h": "-0.3",
    "percent_change_7d": "-0.57",
    "last_updated": "1472762067"
}
 
 */
