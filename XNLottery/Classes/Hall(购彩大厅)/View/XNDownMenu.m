//
//  XNDownMenu.m
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNDownMenu.h"
#import "XNMenuItem.h"

#define XNCols 3
#define XNItemWH XNScreenW/ XNCols;

@implementation XNDownMenu



+ (instancetype)showInView:(UIView *)view items:(NSArray *)itmes oriY:(CGFloat)oriY {
    NSUInteger count = itmes.count;
    
    if (count % 3) {
        NSException *excp = [NSException exceptionWithName:@"itmes的总数不符合" reason:@"传入的数组必须是3的倍数" userInfo:nil];
        [excp raise];
    }
    return nil;
}

- (void)hide {
    [UIView animateWithDuration:0.5 animations:^{
        self.transform = CGAffineTransformMakeTranslation(0, -self.height);
    }completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

@end
