//
//  XNMenuItem.m
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import "XNMenuItem.h"

@implementation XNMenuItem

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title {
    XNMenuItem *item = [[self alloc] init];
    
    item.image = image;
    item.title = title;
    return item;
}

@end
