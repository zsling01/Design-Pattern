//
//  AbstractFactoryA.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "AbstractFactoryA.h"
#import "ContainerProductA.h"
#import "ModeProductA.h"

@implementation AbstractFactoryA

- (AbstractProduct *)createContainerProduct {
    return [ContainerProductA new];
}

- (AbstractProduct *)createModeProduct {
    return [ModeProductA new];
}

@end
