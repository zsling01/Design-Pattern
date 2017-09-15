//
//  Carrier.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  搬运工

#import <Foundation/Foundation.h>
@class StoreHouse;

@interface Carrier : NSObject

+ (instancetype)carrierWithStoreHouse:(StoreHouse *)storeHouse;

/**
 搬进仓库

 @param number 数量
 */
- (void)moveIn:(NSInteger)number;

/**
 搬出仓库

 @param number 数量
 */
- (void)moveOut:(NSInteger)number;

@end
