//
//  MethodFactory.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "MethodFactory.h"

@implementation MethodFactory

- (Product *)createProduct {
    return [Product new];
}

@end
