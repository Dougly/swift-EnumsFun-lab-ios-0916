//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum Suit: String {
    case Spades = "♠️", Diamonds = "♦️", Hearts = "♥️", Clubs = "♣️"
}

enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    var stringValue: String { return String(rawValue) }
}

class Card {
    let suit: Suit
    let rank: Rank
    let description: String
    
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
        self.description = faceCards(rank: rank, suit: suit)
    }
    
}

func faceCards (rank: Rank, suit: Suit) -> String {
    
    if rank.rawValue < 11 {
        return rank.stringValue + suit.rawValue
    } else {
        switch rank.rawValue {
        case 11:
            return ("J\(suit.rawValue)")
        case 12:
            return ("Q\(suit.rawValue)")
        case 13:
            return ("K\(suit.rawValue)")
        default:
            return ("A\(suit.rawValue)")
        }
    }
}
