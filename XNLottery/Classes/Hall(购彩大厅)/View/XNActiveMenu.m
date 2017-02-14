//
//  XNActiveMenu.m
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNActiveMenu.h"

@implementation XNActiveMenu
- (IBAction)cancelBtnClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(activeMenuDidClickCloseBtn:)]) {
        [self.delegate activeMenuDidClickCloseBtn:self];
    }
}

+ (void)hideInPoint:(CGPoint)point completion:(dispatch_block_t)completion {
    
    for (XNActiveMenu *childView in XNKeyWindow.subviews) {
        if ([childView isKindOfClass:self]) {
            [childView setUpHideAnim:point completion:^{
                if (completion) {
                    completion();
                }
            }];
        }
    }
}

#pragma mark - 隐藏动画
- (void)setUpHideAnim:(CGPoint)point completion:(dispatch_block_t)completion {
    [UIView animateWithDuration:0.25 animations:^{
        
        CGAffineTransform transform = CGAffineTransformIdentity;
        
        transform = CGAffineTransformTranslate(transform, -self.center.x + point.x, -self.center.y + point.y);
        
        transform = CGAffineTransformScale(transform, 0.1, 0.1);
    
        self.transform = transform;
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        
        if (completion) {
            completion();
        }
    }];
}


+ (instancetype)showInPoint:(CGPoint)point {
    XNActiveMenu *menu = [XNActiveMenu activeMenu];
    menu.center = point;
    [XNKeyWindow addSubview:menu];
    return menu;
}

+ (instancetype)activeMenu {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] lastObject];
}

@end
