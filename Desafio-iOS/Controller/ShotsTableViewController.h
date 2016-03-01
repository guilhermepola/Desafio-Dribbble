//
//  ShotsTableViewController.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shots.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ShotsTableViewController : UITableViewController

@property(nonatomic, strong)NSMutableArray *arrayShots;
@property(nonatomic, strong)Shots *shotsModel;

@end
