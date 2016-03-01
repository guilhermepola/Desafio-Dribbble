//
//  CSPlayer.m
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/15/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "CSPlayer.h"

@implementation CSPlayer
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"name" : @"name",
             @"username" : @"username",
             @"avatar_url": @"avatar_url"};
}
@end
