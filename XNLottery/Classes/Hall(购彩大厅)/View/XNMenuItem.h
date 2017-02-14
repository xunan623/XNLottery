//
//  XNMenuItem.h
//  XNLottery
//
//  Created by xunan on 2017/2/14.
//  Copyright © 2017年 xunan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XNMenuItem : NSObject

@property (nonatomic, copy) NSString *title;

@property (strong, nonatomic) UIImage *image;

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title;

@end
