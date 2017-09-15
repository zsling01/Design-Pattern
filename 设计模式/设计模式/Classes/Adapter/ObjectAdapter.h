//
//  ObjectAdapter.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

/**
 对象适配器模式：
 
 与类的适配器模式不同的是，对象的适配器模式不是使用继承关系连接到Adaptee类，而是使用委派关系连接到Adaptee类
 
 对于对象适配器，要重定义Adaptee的行为比较困难，这种情况下，需要定义Adaptee的子类来实现重定义，然后让适配器组合子类。虽然重定义Adaptee的行为比较困难，但是想要增加一些新的行为则方便的很，而且新增加的行为可同时适用于所有的源
 
 */
#import <Foundation/Foundation.h>
#import "Adaptee.h"

@protocol TargetDelegate <NSObject>

@optional
- (void)convert_110v;

@end

@interface ObjectAdapter : NSObject<TargetDelegate>

@property (nonatomic, strong) Adaptee *adaptee;

- (instancetype)initWithAdaptee:(Adaptee *)adaptee;

@end
