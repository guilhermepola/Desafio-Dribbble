//
//  Shots.m
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "Shots.h"
#import "DribbbleAPI.h"
@implementation Shots



-(void)loadShotsBlocks:(void (^)(NSArray *shots, BOOL))blocks{

    self.currentPage = @(self.currentPage.integerValue + 1);
    
    //Tratar o dado
    [DribbbleAPI getPopularShots:@{@"page": self.currentPage} blocks:^(NSArray *shots, BOOL success) {
        
        blocks(shots, success);
        
    }];


}


-(void)incrementPage:(void (^)(NSArray *shots, BOOL))blocks{

    self.currentPage = @(self.currentPage.integerValue + 1);
    
    
    //Tratar o dado
    [DribbbleAPI getPopularShots:@{@"page": self.currentPage} blocks:^(NSArray *shots, BOOL success) {
        
        
        blocks(shots, success);
        
    }];
}


@end
