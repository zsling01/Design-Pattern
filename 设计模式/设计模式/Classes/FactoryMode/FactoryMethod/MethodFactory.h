//
//  MethodFactory.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  工厂方法模式
/**
 示例说明：
 
 背景：小成有一间塑料加工厂（仅生产A类产品）；随着客户需求的变化，客户需要生产B类产品；
 冲突：改变原有塑料加工厂的配置和变化非常困难，假设下一次客户需要再发生变化，再次改变将增大非常大的成本；
 解决方案：小成决定置办塑料分厂B来生产B类产品；
 
 */

#import <Foundation/Foundation.h>
#import "Product.h"

@interface MethodFactory : NSObject

/**
 生产产品

 @return 返回产品
 */
- (Product *)createProduct;

@end
