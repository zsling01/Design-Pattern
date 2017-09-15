//
//  Carrier.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "Carrier.h"
#import "StoreHouse.h"

@interface Carrier ()
@property (nonatomic, strong) StoreHouse *storeHouse;
@end

@implementation Carrier

+ (instancetype)carrierWithStoreHouse:(StoreHouse *)storeHouse {
    Carrier *carrier = [[self alloc] init];
    carrier.storeHouse = storeHouse;
    return carrier;
}

- (void)moveIn:(NSInteger)number {
    self.storeHouse.quantity += number;
}

- (void)moveOut:(NSInteger)number {
    self.storeHouse.quantity -= number;
}

@end
