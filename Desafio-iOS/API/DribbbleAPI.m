//
//  DribbbleAPI.m
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "DribbbleAPI.h"

NSString* const kAccessToken = @"951320fc6f069e9f2b8f25201f504eca56caa29aa5c90d67237fa37fad8dee5b";

#define kDribbble @"https://api.dribbble.com/v1"
NSString *const kDribbbleShots = kDribbble @"/shots";

@implementation DribbbleAPI

+(void)getPopularShots:(NSDictionary *)params blocks:(void (^)(NSArray *shots, BOOL success))block{

    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager.requestSerializer setValue:[NSString stringWithFormat:@"Bearer %@", kAccessToken]
                     forHTTPHeaderField:@"Authorization"];
    NSString *urlRequest = kDribbbleShots;

    [manager GET:urlRequest parameters:params success:^(NSURLSessionDataTask * task, id  responseObject) {
        
        
        NSArray *shots =
        [MTLJSONAdapter modelsOfClass:[CSShots class]
                        fromJSONArray:responseObject
                                error:nil];
        
    
        block(shots, YES);
       
    } failure:^(NSURLSessionDataTask * task, NSError * error) {
        
        NSString* ErrorResponse = [[NSString alloc] initWithData:(NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] encoding:NSUTF8StringEncoding];
        
        NSLog(@"ERRO: %@",ErrorResponse);
        
        block(nil, NO);
        
        
    }];

}

@end
