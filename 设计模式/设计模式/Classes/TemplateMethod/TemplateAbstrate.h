//
//  TemplateAbstrate.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//  抽象模版类

/**
 示例说明：
 
 背景：小成希望学炒菜：手撕包菜 & 蒜蓉炒菜心
 冲突：两道菜的炒菜步骤有的重复有的却差异很大，记不住
 解决方案：利用代码记录下来
 */

#import <Foundation/Foundation.h>

@interface TemplateAbstrate : NSObject

- (void)cookProgress;

// 模板外 不同的操作
- (void)pourVegetable;

- (void)pourSauce;

@end
