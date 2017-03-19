//
//  Card.h
//  CS193_1
//
//  Created by Dz Hg on 17/03/2017.
//  Copyright © 2017 Dz Hg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (strong, nonatomic, getter=isMatced) NSString *matched;
@property (strong, nonatomic) NSString *chousen;

- (int) match: (NSArray*) otherCards;

@end
