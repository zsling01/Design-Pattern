//
//  FactoryB.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "FactoryB.h"
#import "ProductB.h"

@implementation FactoryB

- (Product *)createProduct {
    return [ProductB new];
}

@end
