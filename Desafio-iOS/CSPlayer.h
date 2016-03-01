//
//  CSPlayer.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/15/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"


@interface CSPlayer : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString *player_id;
@property (nonatomic, strong)NSString *name;
@property (nonatomic, strong)NSURL *avatar_url;
@property (nonatomic, strong)NSString *username;


@end
