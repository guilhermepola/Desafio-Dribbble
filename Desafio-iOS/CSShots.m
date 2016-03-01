//
//  CSShots.m
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/15/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "CSShots.h"
#import <Mantle/NSValueTransformer+MTLPredefinedTransformerAdditions.h>
@implementation CSShots
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"title": @"title",
             @"shots_description": @"description",
             @"image_url": @"images",
             @"views_count": @"views_count",
             @"player": @"user"};
}


+ (NSValueTransformer *)player_JSONTransformer {
    

    return [MTLJSONAdapter arrayTransformerWithModelClass:[CSPlayer class]];

    
}


@end
