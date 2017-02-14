//
//  XNActiveMenu.h
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XNActiveMenu;

@protocol XNActiveMenuDelegate <NSObject>

- (void)activeMenuDidClickCloseBtn:(XNActiveMenu *)menu;

@end

@interface XNActiveMenu : UIView

@property (nonatomic, weak) id<XNActiveMenuDelegate> delegate;

+ (instancetype)activeMenu;

+ (instancetype)showInPoint:(CGPoint)point;

+ (void)hideInPoint:(CGPoint)point completion:(dispatch_block_t)completion;

@end
