//
//  XNCover.m
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNCover.h"

@implementation XNCover

+ (void)show {
    XNCover *cover = [[XNCover alloc] initWithFrame:XNScreenBounds];
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.6;
    [XNKeyWindow addSubview:cover];
}

+ (void)hide {
    for (UIView *subViews in XNKeyWindow.subviews) {
        if ([subViews isKindOfClass:self]) {
            [subViews removeFromSuperview];
        }
    }
}

@end
