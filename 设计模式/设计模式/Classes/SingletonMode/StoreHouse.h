//
//  StoreHouse.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  仓库
/**
 示例说明：
 
 背景：小成有一个塑料生产厂，但里面只有一个仓库。
 目的：想用代码来实现仓库的管理
 现有做法： 建立仓库类和工人类
 */

#import <Foundation/Foundation.h>

@interface StoreHouse : NSObject

/**
 仓库产品数量
 */
@property (nonatomic, assign) NSInteger quantity;

+ (instancetype)sharedInstance;

@end
