//
//  TemplateAbstrate.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "TemplateAbstrate.h"

@implementation TemplateAbstrate

- (void)cookProgress {
    [self pourOil];
    [self heatOil];
    [self pourVegetable];
    [self pourSauce];
    [self fry];
}

// 公共的方法
- (void)pourOil {
    NSLog(@"倒油");
}

- (void)heatOil {
    NSLog(@"热油");
}

- (void)fry {
    NSLog(@"翻炒");
}

@end
