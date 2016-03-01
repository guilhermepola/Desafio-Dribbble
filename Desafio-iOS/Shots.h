//
//  Shots.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Shots : NSObject

@property(nonatomic, strong)NSNumber *currentPage;


-(void)loadShotsBlocks: (void(^)(NSArray *shots, BOOL success))blocks;
-(void)incrementPage: (void(^)(NSArray *shots, BOOL success))blocks;

@end
