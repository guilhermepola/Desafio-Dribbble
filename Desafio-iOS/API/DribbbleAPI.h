//
//  DribbbleAPI.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import <Mantle/Mantle.h>
#import "CSShots.h"

@interface DribbbleAPI : AFHTTPSessionManager

+(void)getPopularShots: (NSDictionary *)params  blocks:(void(^)(NSArray *shots, BOOL success))block;


@end
