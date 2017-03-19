//
//  Card.m
//  CS193_1
//
//  Created by Dz Hg on 17/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import "Card.h"


@interface Card ()

@end


@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}


@end
