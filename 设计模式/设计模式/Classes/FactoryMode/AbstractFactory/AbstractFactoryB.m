//
//  AbstractFactoryB.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "AbstractFactoryB.h"
#import "ModeProductB.h"
#import "ContainProductB.h"

@implementation AbstractFactoryB

- (AbstractProduct *)createModeProduct {
    return [ModeProductB new];
}

- (AbstractProduct *)createContainerProduct {
    return [ContainProductB new];
}

@end
