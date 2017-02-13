//
//  XNNavigationController.m
//  XNLottery
//
//  Created by xunan on 2017/2/13.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNNavigationController.h"

@interface XNNavigationController ()

@end

@implementation XNNavigationController

// 当程序第一次启动的时候就会调用  加载类的时候
+ (void)load {}

// 当前类或者其他子类第一次使用的时候才会调用
+ (void)initialize {
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    // 设置导航条标题颜色
    NSMutableDictionary *titleAttr = [NSMutableDictionary dictionary];
    titleAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    titleAttr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [bar setTitleTextAttributes:titleAttr];

}

- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
