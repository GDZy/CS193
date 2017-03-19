//
//  PlayingCard.h
//  CS193_1
//
//  Created by Dz Hg on 18/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card


@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuit;
+(NSUInteger)maxRank;




@end
