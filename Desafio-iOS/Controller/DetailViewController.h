//
//  DetailViewController.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/22/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSShots.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface DetailViewController : UIViewController

@property(nonatomic, strong)CSShots *shots;


@property (weak, nonatomic) IBOutlet UIImageView *imageViewShot;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewPlayer;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UITextView *textViewDescription;
@end
