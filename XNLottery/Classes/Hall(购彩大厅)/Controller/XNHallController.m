//
//  XNHallController.m
//  XNLottery
//
//  Created by xunan on 2017/2/13.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNHallController.h"
#import "UIImage+Image.h"
#import "XNActiveMenu.h"
#import "XNCover.h"

@interface XNHallController ()<XNActiveMenuDelegate>

@end

@implementation XNHallController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"购彩大厅";
    
    // 左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriRenderingImage:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(active)];
    
    // 添加右边按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOriRenderingImage:@"Development"] style:UIBarButtonItemStylePlain target:self action:@selector(popMenu)];

}

#pragma mark - 弹出黑色菜单
- (void)popMenu {
    
}

#pragma mark - 点击活动
- (void)active {
    
    // 背景
    [XNCover show];
    
    XNActiveMenu *menu = [XNActiveMenu showInPoint:self.view.center];
    menu.delegate = self;
    
}

#pragma mark - XNActiveMenuDelegate

- (void)activeMenuDidClickCloseBtn:(XNActiveMenu *)menu {
    [XNActiveMenu hideInPoint:CGPointMake(44, 44) completion:^{
        [XNCover hide];
    }];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}



@end
