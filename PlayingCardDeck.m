//
//  PlayingCardDeck.m
//  CS193_1
//
//  Created by Dz Hg on 19/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import "PlayingCardDeck.h"

@interface PlayingCardDeck()

@end

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    
    if (self){
        for (NSString *suit in [PlayingCard validSuit]){
            for (NSUInteger rank =1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}


@end
