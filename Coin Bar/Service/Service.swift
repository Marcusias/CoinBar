//
//  CoinService.swift
//  Coin Bar
//
//  Created by Adam Waite on 16/09/2017.
//  Copyright © 2017 adamjwaite.co.uk. All rights reserved.
//

import Foundation

protocol ServiceProtocol {
    func getAllCoins(completion: @escaping (Result<[Coin]>) -> ())
}

final class Service: ServiceProtocol {
    
    private let networking: NetworkingProtocol
    
    init(networking: NetworkingProtocol) {
        self.networking = networking
    }
    
    convenience init() {
        let networking = Networking()
        self.init(networking: networking)
    }
    
    func getAllCoins(completion: @escaping (Result<[Coin]>) -> ()) {
        networking.getAllCoins(completion: completion)
    }
}
