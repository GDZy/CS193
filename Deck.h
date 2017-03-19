//
//  Deck.h
//  CS193_1
//
//  Created by Dz Hg on 18/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"


@interface Deck : NSObject


- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;


- (Card *)drawRandomCard;










@end
