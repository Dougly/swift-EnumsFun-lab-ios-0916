//
//  Player.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Player {
    let name: String
    var hand: Hand
    
    init(name: String, hand: Hand) {
        self.name = name
        self.hand = hand
    }
    
    func hasCards () -> Bool {
        return !hand.cards.isEmpty
    }
    
    func flip () -> Card? {
        //let topCard: Card? = hand.cards[0]
        if !self.hand.cards.isEmpty {
            let topCard = self.hand.cards[0]
            self.hand.cards.remove(at: 0)
            return topCard
        }
        return nil
    }
    
    func give(card: Card) {
        hand.cards.append(card)
    }
    
    func lose(card: Card) {
        for (index, item) in hand.cards.enumerated() {
            if card.description == item.description {
                self.hand.cards.remove(at: index)
            }
        }
    }

}
