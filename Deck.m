//
//  Deck.m
//  CS193_1
//
//  Created by Dz Hg on 18/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import "Deck.h"


@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; // of Card
@end


@implementation Deck

-(NSMutableArray *)cards // getter for property cards;
{
    if (!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    
    return _cards;
}


- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop){
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
    
}


- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}


- (Card *)drawRandomCard
{
    Card* randomCard = nil;
    
    if ([self.cards count]){  //what if no elements in array???
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}



@end
