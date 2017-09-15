//
//  Adapter.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

/**
 类适配器模式：
    继承关系 Adapter 连接到 Adaptee 类，而是使用委派关系连接到 Adaptee 类
 
    对于类适配器，适配器可以重定义Adaptee的部分行为，相当于子类覆盖父类的部分实现方法
 */

#import <Foundation/Foundation.h>
#import "Adaptee.h"

@protocol TargetDelegate <NSObject>

@optional
- (void)convert_110v;

@end

@interface Adapter : Adaptee <TargetDelegate>

@end
