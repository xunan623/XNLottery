//
//  XNDownMenu.h
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XNDownMenu : UIView

+ (instancetype)showInView:(UIView *)view items:(NSArray *)itmes oriY:(CGFloat)oriY;

- (void)hide;

@end
