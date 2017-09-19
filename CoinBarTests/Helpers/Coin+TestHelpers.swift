//
//  Coin+TestHelpers.swift
//  CoinBarTests
//
//  Created by Adam Waite on 19/09/2017.
//  Copyright © 2017 adamjwaite.co.uk. All rights reserved.
//

import Foundation
@testable import CoinBar

extension Coin {
    
    static var bitcoin: Coin {
        return Coin(
            id: "bitcoin",
            name: "Bitcoin",
            symbol: "BTC",
            rank: "1",
            priceUSD: "3000.00",
            priceBTC: "1.0",
            percentChange1h: "1",
            percentChange24h: "2",
            percentChange7d: "5"
        )
    }
    
    static var ethereum: Coin {
        return Coin(
            id: "ethereum",
            name: "Ethereum",
            symbol: "ETH",
            rank: "2",
            priceUSD: "300.00",
            priceBTC: "0.1",
            percentChange1h: "2",
            percentChange24h: "4",
            percentChange7d: "10"
        )
    }
}