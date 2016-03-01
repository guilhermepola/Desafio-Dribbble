//
//  CSShots.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/15/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

//#import <Foundation/Foundation.h>
//#import "MTLModel.h"
//#import "MTLJSONAdapter.h"
#import "CSPlayer.h"
#import <Mantle/Mantle.h>

@interface CSShots : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *shots_description;
@property (nonatomic, copy)NSDictionary *image_url;
@property (nonatomic, copy)NSNumber *views_count;

//@property (nonatomic, readonly, copy) NSString *name;
//@property (nonatomic, readonly, copy) NSString *email;
//@property (nonatomic, readonly, copy) NSURL *image;


@property(nonatomic, copy)CSPlayer *player;






@end
