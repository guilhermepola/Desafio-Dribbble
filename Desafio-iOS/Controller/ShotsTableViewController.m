//
//  ShotsTableViewController.m
//  Desafio-iOS
//
//  Created by Guilherme Pola on 9/21/15.
//  Copyright © 2015 Guilherme Pola. All rights reserved.
//

#import "ShotsTableViewController.h"
#import "Shots.h"
#import <SVPullToRefresh/SVPullToRefresh.h>
#import "ShotsTableViewCell.h"
#import "CSShots.h"
#import "DetailViewController.h"
@interface ShotsTableViewController ()

@end

@implementation ShotsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.shotsModel = [[Shots alloc]init];
    
    [self createInfiniteScroll];
    [self loadShots];
    [self settingsRefreshControl];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.arrayShots.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ShotsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    CSShots *shots = self.arrayShots[indexPath.row];

    [cell.backgrounImage sd_setImageWithURL:shots.image_url[@"normal"] placeholderImage:[UIImage imageNamed:@""]];
    cell.labelName.text = shots.title;
    cell.labelViewCount.text = [shots.views_count stringValue];
    
    
    return cell;
}

#pragma Actions
-(void)settingsRefreshControl{
    self.refreshControl = [[UIRefreshControl alloc]init];
    
    [self.refreshControl addTarget:self action:@selector(loadShots) forControlEvents:UIControlEventValueChanged];
    
    [self.tableView addSubview:self.refreshControl];
    
}
-(void)loadShots{
    
    [self.shotsModel loadShotsBlocks:^(NSArray *shots, BOOL success) {
        
        self.arrayShots = (NSMutableArray *)shots;
        [self.tableView reloadData];
        [self.refreshControl endRefreshing];
        
    }];
    
}
-(void)createInfiniteScroll{
    __weak ShotsTableViewController *weakSelf = self;
    [self.tableView addInfiniteScrollingWithActionHandler:^{
        
        [weakSelf.shotsModel incrementPage:^(NSArray *shots, BOOL success) {
            
            [weakSelf.arrayShots addObjectsFromArray:shots];
            [weakSelf.tableView reloadData];
            [weakSelf.tableView.infiniteScrollingView stopAnimating];
            
        }];
        
    }];
}

#pragma prepareForSegue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    if ([segue.identifier isEqualToString:@"segueDetail"]) {
        
        DetailViewController *detail = segue.destinationViewController;
        detail.shots = self.arrayShots[self.tableView.indexPathForSelectedRow.row];
        
        
        
    }
    
    
}


@end
