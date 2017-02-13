//
//  XNTabBarController.m
//  XNLottery
//
//  Created by xunan on 2017/2/13.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNTabBarController.h"
#import "XNHallController.h"
#import "XNArenaController.h"
#import "XNDiscoverController.h"
#import "XNHistoryController.h"
#import "XNMyLotteryController.h"
#import "XNTabBar.h"
#import "XNNavigationController.h"

@interface XNTabBarController ()<XNTagBarDelegate>

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation XNTabBarController

- (NSMutableArray *)items {
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildVC];
    
    [self setupTabBar];
}

- (void)setupTabBar {
    [self.tabBar removeFromSuperview];
    
    
    XNTabBar *tabBar = [[XNTabBar alloc] init];
    
    // 存储UITabBarItem
    tabBar.items = self.items;
    
    tabBar.delegate = self;
    
    tabBar.backgroundColor = rgb(12, 12, 12);
    
    tabBar.frame = self.tabBar.frame;
    
    [self.view addSubview:tabBar];
}

- (void)setupChildVC {
    // 购彩大厅
    XNHallController *hall = [[XNHallController alloc] init];
    
    [self setUpOneChildViewController:hall image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] title:@"采购大厅"];
    
    
    // 竞技场
    XNArenaController *arena = [[XNArenaController alloc] init];
    
    [self setUpOneChildViewController:arena image:[UIImage imageNamed:@"TabBar_Arena_new"] selImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:nil];
    
    // 发现
    XNDiscoverController *discover = [[XNDiscoverController alloc] init];
    [self setUpOneChildViewController:discover image:[UIImage imageNamed:@"TabBar_Discovery_new"] selImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] title:@"发现"];
    
    // 开奖信息
    XNHistoryController *history = [[XNHistoryController alloc] init];
    [self setUpOneChildViewController:history image:[UIImage imageNamed:@"TabBar_History_new"] selImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"开奖信息"];
    
    // 我的彩票
    XNMyLotteryController *myLottery = [[XNMyLotteryController alloc] init];
    [self setUpOneChildViewController:myLottery image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] title:@"我的彩票"];
}

- (void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title
{
    
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selImage;
    vc.navigationItem.title = title;

    
    [self.items addObject:vc.tabBarItem];
    
    vc.view.backgroundColor = [self randomColor];
    XNNavigationController *nav = [[XNNavigationController alloc] initWithRootViewController:vc];

    [self addChildViewController:nav];
}

- (UIColor *)randomColor
{
    
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

#pragma mark - XNTabBarDelegate

- (void)tabBar:(XNTabBar *)tabBar didClickBtn:(NSInteger)index {
    self.selectedIndex = index;

}


@end
