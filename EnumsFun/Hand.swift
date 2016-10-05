//
//  Hand.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Hand {
    var cards: [Card]
    var size: Int { return cards.count }
    
    init (cards: [Card]) {
        self.cards = cards
    }
    
    func flip () -> Card? {
        //let topCard: Card? = cards[0]
        if !self.cards.isEmpty {
            let topCard = self.cards[0]
            cards.remove(at: 0)
            return topCard
        }
        return nil
    }
    
    func give(card: Card) {
        cards.append(card)
    }
    
    func lose(card: Card) {
        for (index, item) in cards.enumerated() {
            if card.description == item.description {
                cards.remove(at: index)
            }
        }
    }
    
    
}
