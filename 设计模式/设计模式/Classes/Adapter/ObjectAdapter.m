//
//  ObjectAdapter.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "ObjectAdapter.h"

@implementation ObjectAdapter

- (instancetype)initWithAdaptee:(Adaptee *)adaptee {
    if (self = [super init]) {
        _adaptee = adaptee;
    }
    return self;
}

- (void)convert_110v {
    [self.adaptee output_220v];
}

@end
