//
//  PlayingCard.m
//  CS193_1
//
//  Created by Dz Hg on 18/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard()

@end



@implementation PlayingCard


- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6",
             @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}


@synthesize suit = _suit;
- (void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuit] containsObject:suit]){
        _suit =suit;
    }
}
- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)validSuit
{
    return @[@"♥",@"♦",@"♠", @"♣"];
}


+ (NSUInteger)maxRank
{
    return ([[self rankStrings] count] - 1);
}

@end
