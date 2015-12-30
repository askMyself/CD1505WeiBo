//
//  HomeTableViewController.m
//  CD1505Weibo
//
//  Created by HeHui on 15/12/29.
//  Copyright (c) 2015年 Hawie. All rights reserved.
//

#import "HomeTableViewController.h"

@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createNaviBarItem];
    
}

- (void)createNaviBarItem{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem generateBarButtonItemWithNorImage:@"navigationbar_friendattention" highImage:@"navigationbar_friendattention_highlighted"];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem generateBarButtonItemWithNorImage:@"navigationbar_icon_radar" highImage:@"navigationbar_icon_radar_highlighted"];
    
    TitleButton * btn = [TitleButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"发现" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:UIControlStateSelected];
    btn.frame = CGRectMake(0, 0, 200, 30);
    self.navigationItem.titleView = btn;
    [btn addTarget:self action:@selector(titleBtnPress:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)titleBtnPress:(TitleButton *)btn{
    btn.selected = !btn.selected;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 0;
}


@end
