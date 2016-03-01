//
//  DetailViewController.m
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/22/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageViewPlayer.layer.cornerRadius = self.imageViewPlayer.frame.size.height / 2.0;
    self.imageViewPlayer.layer.masksToBounds = YES;
    
    [self.imageViewShot sd_setImageWithURL:self.shots.image_url[@"normal"] placeholderImage:[UIImage imageNamed:@""]];
    [self.imageViewPlayer sd_setImageWithURL:self.shots.player.avatar_url placeholderImage:[UIImage imageNamed:@""]];
    self.labelTitle.text = self.shots.title;
    NSLog(@"DESC: %@", self.shots.shots_description);
    self.textViewDescription.text = [self convertHTML:self.shots.shots_description];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)convertHTML:(NSString *)html {
    
    NSScanner *myScanner;
    NSString *text = nil;
    myScanner = [NSScanner scannerWithString:html];
    
    while ([myScanner isAtEnd] == NO) {
        
        [myScanner scanUpToString:@"<" intoString:NULL] ;
        
        [myScanner scanUpToString:@">" intoString:&text] ;
        
        html = [html stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"%@>", text] withString:@""];
    }
    //
    html = [html stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return html;
}


@end
