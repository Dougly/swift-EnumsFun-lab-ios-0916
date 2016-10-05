//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Deck {
    var cards: [Card] = []
    
    init () {
        for i in 2...14 {
            cards.append(Card(rank: Rank(rawValue: i)!, suit: .Spades))
            cards.append(Card(rank: Rank(rawValue: i)!, suit: .Diamonds))
            cards.append(Card(rank: Rank(rawValue: i)!, suit: .Hearts))
            cards.append(Card(rank: Rank(rawValue: i)!, suit: .Clubs))
        }
        cards.shuffle()
    }
    
    func split () -> ([Card],[Card]) {
        return self.cards.split()
    }
}
