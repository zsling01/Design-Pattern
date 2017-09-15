//
//  ViewController.m
//  设计模式
//
//  Created by zsling on 17/9/15.
//  Copyright © 2017年 zsling. All rights reserved.
//

#import "ViewController.h"

#import "StoreHouse.h"
#import "Carrier.h"

#import "SampleFactory.h"

#import "FactoryA.h"
#import "FactoryB.h"

#import "AbstractFactoryA.h"
#import "AbstractFactoryB.h"

#import "SalesMan.h"

#import "ImportedMachine.h"
#import "Adapter.h"
#import "ObjectAdapter.h"

#import "CookBaoCai.h"
#import "CookCaiXin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)modeBtnClick:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            [self singleton];
            break;
        case 1:
            [self sampleFactory];
            break;
        case 2:
            [self methodFactory];
            break;
        case 3:
            [self abstractFactory];
            break;
        case 4:
            [self strategyPattern];
            break;
        case 5:
            //[self classAdapterPattern];
            [self objectAdapterPattern];
            break;
        case 6:
            [self templatePattern];
            break;
    }
}

// 单例模式
- (void)singleton {
    StoreHouse *storeHouseA = [StoreHouse sharedInstance];
    Carrier *carrierA = [Carrier carrierWithStoreHouse:storeHouseA];
    [carrierA moveIn:10];
    NSLog(@"storeHouseA-quantity: %ld", storeHouseA.quantity);
    
    StoreHouse *storeHouseB = [StoreHouse sharedInstance];
    Carrier *carrierB = [Carrier carrierWithStoreHouse:storeHouseB];
    [carrierB moveOut:5];
    NSLog(@"storeHouseB-quantity: %ld", storeHouseB.quantity);
    
    [[StoreHouse sharedInstance] setQuantity:20];
    NSLog(@"StoreHouse quantity: %ld, %ld, %ld", [StoreHouse sharedInstance].quantity, storeHouseA.quantity, storeHouseB.quantity);
}

// carrierA carrierB 操作的不是同一个仓库，输出有误
- (void)wrongSingleton {
    StoreHouse *storeHouseA = [[StoreHouse alloc] init];
    Carrier *carrierA = [Carrier carrierWithStoreHouse:storeHouseA];
    [carrierA moveIn:10];
    NSLog(@"storeHouseA-quantity: %ld", storeHouseA.quantity);
    
    StoreHouse *storeHouseB = [[StoreHouse alloc] init];
    Carrier *carrierB = [Carrier carrierWithStoreHouse:storeHouseB];
    [carrierB moveOut:5];
    NSLog(@"storeHouseB-quantity: %ld", storeHouseB.quantity);
}

// 简单工厂模式
- (void)sampleFactory {
    SampleFactory *factory = [[SampleFactory alloc] init];
    Product *product = [factory createProductWithType:@"ProductA"];
    [product showProductName];
}

// 工厂方法模式
- (void)methodFactory {
    MethodFactory *factoryA = [[FactoryA alloc] init];
    [[factoryA createProduct] showProductName];
    
    MethodFactory *factoryB = [[FactoryB alloc] init];
    [[factoryB createProduct] showProductName];
}

// 抽象工厂模式
- (void)abstractFactory {
    AbstractFactory *factoryA = [[AbstractFactoryA alloc] init];
    [[factoryA createContainerProduct] show];
    [[factoryA createModeProduct] show];
    
    AbstractFactoryB *factoryB = [[AbstractFactoryB alloc] init];
    [[factoryB createModeProduct] show];
    [[factoryB createContainerProduct] show];
}

/**
 策略模式 VS 简单工厂模式
 策略模式 注重的是选择某种策略，并不关心这个策略本身，且策略大多是方法，没有属性，可以理解为是虚拟的
 简单工厂模式 注重的是产生某种产品这一具体的对象，这产品对象可以有属性有方法，有自己的特性，是真实存在的
 
 工厂：生产出产品A，这个产品是真实存在的，它可以有自己的属性，可以有自己的特性
 Product *product = [factory createProductWithType:@"ProductA"];
 策略：售货员选择某种促销活动方案，这个方案是一种方法，是看不见摸不着的，虚拟的
 [saleMan shooseStrategy:@"A"];
 */
// 策略模式
- (void)strategyPattern {
    // 售货员
    SalesMan *saleMan = [[SalesMan alloc] init];
    // 售货员选择策略A
    [saleMan shooseStrategy:@"A"];
    [saleMan showStrategy];
}

// 类适配器模式
- (void)classAdapterPattern {
    Adapter *adapter = [[Adapter alloc] init];
    ImportedMachine *machine = [[ImportedMachine alloc] init];
    [adapter convert_110v];
    [machine work];
}

// 对象适配器模式
- (void)objectAdapterPattern {
    Adaptee *adaptee = [[Adaptee alloc] init];
    ObjectAdapter *objectAdapter = [[ObjectAdapter alloc] initWithAdaptee:adaptee];
    [objectAdapter convert_110v];
    
    ImportedMachine *machine = [[ImportedMachine alloc] init];
    [machine work];
}

// 模版模式
- (void)templatePattern {
    TemplateAbstrate *baocai = [[CookBaoCai alloc] init];
    [baocai cookProgress];
    
    NSLog(@"----------------------");
    
    TemplateAbstrate *caixin = [[CookBaoCai alloc] init];
    [caixin cookProgress];
}

@end
