//
//  SalesMan.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "SalesMan.h"
#import "StrategyA.h"
#import "StrategyB.h"

@implementation SalesMan

- (void)shooseStrategy:(NSString *)strategy {
    if ([strategy isEqualToString:@"A"]) {
        self.stragy = [StrategyA new];
    } else if ([strategy isEqualToString:@"B"]) {
        self.stragy = [StrategyB new];
    }
}

- (void)showStrategy {
    [self.stragy showStrategeName];
}

@end
