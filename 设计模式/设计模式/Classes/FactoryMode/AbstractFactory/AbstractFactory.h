//
//  AbstractFactory.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  抽象工厂模式
/**
 示例说明：
 
 背景：小成有两间塑料加工厂（A厂仅生产容器类产品；B厂仅生产模具类产品）；随着客户需求的变化，A厂所在地的客户需要也模具类产品，B厂所在地的客户也需要容器类产品；
 冲突：没有资源（资金+租位）在当地分别开设多一家注塑分厂
 解决方案：在原有的两家塑料厂里增设生产需求的功能，即A厂能生产容器+模具产品；B厂间能生产模具+容器产品。
 
 */

#import <Foundation/Foundation.h>
#import "AbstractProduct.h"

@interface AbstractFactory : NSObject

/**
 生产容器产品

 @return 返回容器产品
 */
- (AbstractProduct *)createContainerProduct;

/**
 生产模具产品

 @return 返回模具产品
 */
- (AbstractProduct *)createModeProduct;

@end
