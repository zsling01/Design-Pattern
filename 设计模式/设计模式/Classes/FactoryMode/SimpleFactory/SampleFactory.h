//
//  SampleFactory.h
//  pushTest
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  简单工厂模式
/**
 示例说明：
 
 背景：小成有一个塑料生产厂，用来做塑料加工生意
 目的：最近推出了3个产品，小成希望使用简单工厂模式实现3款产品的生产

 */

#import <Foundation/Foundation.h>
#import "Product.h"

@interface SampleFactory : NSObject

/**
 根据类型生产产品

 @param type 产品类型
 @return 产品
 */
- (Product *)createProductWithType:(NSString *)type;

@end
