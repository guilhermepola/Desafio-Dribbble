//
//  ShotsTableViewCell.h
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShotsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelViewCount;
@property (weak, nonatomic) IBOutlet UIImageView *backgrounImage;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@end
