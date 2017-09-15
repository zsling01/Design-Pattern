//
//  SalesMan.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  售货员
/**
 示例说明：
 
 背景：小成有一家百货公司，最近在定年度的促销活动
 冲突：每个节日用同一个促销活动太枯燥，没吸引力
 解决方案：针对不同节目使用不同促销活动进行促销

 */

#import <Foundation/Foundation.h>
#import "Strategy.h"

@interface SalesMan : NSObject

/**
 策略
 */
@property (nonatomic, strong) Strategy *stragy;

/**
 售货员选择策略

 @param strategy 策略名称
 */
- (void)shooseStrategy:(NSString *)strategy;

/**
 显示策略名称
 */
- (void)showStrategy;
@end
