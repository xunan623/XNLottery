//
//  XNTabBar.m
//  XNLottery
//
//  Created by xunan on 2017/2/13.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNTabBar.h"

@interface XNTabBar()

@property (nonatomic, weak) UIButton *selBtn;

@end

@implementation XNTabBar

- (void)setItems:(NSArray *)items
{
    _items = items;
    
    // UITabBarItem保存按钮上的图片
    for (UITabBarItem *item in items) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        btn.tag = self.subviews.count;
        
        [btn setImage:item.image forState:UIControlStateNormal];
        
        [btn setImage:item.selectedImage forState:UIControlStateSelected];
        
        [self addSubview:btn];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        if (self.subviews.count == 1) {
            [self btnClick:btn];
        }
    }
    
}

- (void)btnClick:(UIButton *)button {
    _selBtn.selected = NO;
    
    button.selected = YES;

    _selBtn = button;
    
    if ([self.delegate respondsToSelector:@selector(tabBar:didClickBtn:)]) {
        [self.delegate tabBar:self didClickBtn:button.tag];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = [UIScreen mainScreen].bounds.size.width / count;
    CGFloat h = self.bounds.size.height;
    
    for (int i = 0; i < count; i++) {
        UIButton *btn = self.subviews[i];
        
        x = i * w;
        btn.frame = CGRectMake(x, y, w, h);
    }
}

@end
