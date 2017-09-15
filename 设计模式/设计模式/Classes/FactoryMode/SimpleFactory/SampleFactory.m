//
//  SampleFactory.m
//  pushTest
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "SampleFactory.h"

@implementation SampleFactory

- (Product *)createProductWithType:(NSString *)type {
    Class class = NSClassFromString(type);
    Product *product = [[class alloc] init];
    return product;
}

@end
