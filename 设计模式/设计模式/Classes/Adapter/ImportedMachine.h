//
//  ImportedMachine.h
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//
/**
 示例说明：
 
 背景：小成买了一个进口的电视机
 冲突：进口电视机要求电压（110V）与国内插头标准输出电压（220V）不兼容
 解决方案：设置一个适配器将插头输出的220V转变成110V
 
 */

#import <Foundation/Foundation.h>

@interface ImportedMachine : NSObject

- (void)work;

@end
