//
//  GameEngine.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class GameEngine {
    let player1: Player
    let player2: Player
    var deck: Deck
    
    init (player1: String, player2: String) {
        self.deck = Deck()
        let splitDeck = self.deck.split()
        
        self.player1 = Player(name: player1, hand: Hand(cards: splitDeck.0))
        self.player2 = Player(name: player2, hand: Hand(cards: splitDeck.1))
    }
    
    func playOneTurn () -> (Player, Card?, Card?) {
        if
            let player1sFlippedCard = player1.flip(),
            let player2sFlippedCard = player2.flip() {
            if player1sFlippedCard.rank.rawValue > player2sFlippedCard.rank.rawValue {
                return (player1, player1sFlippedCard, player2sFlippedCard)
            } else if player2sFlippedCard.rank.rawValue > player1sFlippedCard.rank.rawValue {
                return (player2, player1sFlippedCard, player2sFlippedCard)
            }
            
        } else if player1.flip() == nil {
            return (player2, nil, nil)
        }
        return (player1, nil, nil)
    }
    
    func award (cards: [Card], to player: Player) {
        for item in cards {
            player.give(card: item)
        }
    }
    
    func gameOver () -> Bool {
        if player1.hand.cards.isEmpty || player2.hand.cards.isEmpty {
            return true
        }
        return false
    }
}
