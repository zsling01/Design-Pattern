//
//  AbstractFactory.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "AbstractFactory.h"

@implementation AbstractFactory

- (AbstractProduct *)createModeProduct {
    return [AbstractProduct new];
}

- (AbstractProduct *)createContainerProduct {
    return [AbstractProduct new];
}

@end
