//
//  XNTabBar.h
//  XNLottery
//
//  Created by xunan on 2017/2/13.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XNTabBar;
@protocol XNTagBarDelegate <NSObject>

- (void)tabBar:(XNTabBar *)tabBar didClickBtn:(NSInteger)index;

@end

@interface XNTabBar : UIView

// 模型数组(UITabBarItem)
@property (nonatomic, strong) NSArray *items;

@property (nonatomic, weak) id<XNTagBarDelegate> delegate;

@end
