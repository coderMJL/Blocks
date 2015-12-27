//
//  ViewController.m
//  block_two
//
//  Created by baxiang on 13-7-30.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"


typedef void (^myBlock) (int ,int);
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	/*
    
      block 在方法中充当参数的使用 主要用途在于参数的回调
       回调机制
    
    */
    //定义一个功能,两个参数,相加
    myBlock addblock=^(int a,int b){
        NSLog(@"%d",a+b);
       
    };
    //定义一个功能,两个参数,相乘
    myBlock multBlock=^(int a,int b){
        NSLog(@"%d",a*b);
    
    };
    
    //使用功能add;
    [self useBlock:addblock];
    //使用功能mult;
    [self useBlock:multBlock];

    //最常见的写法 ，省略block变量名字
    /*
     ^(int a, int b) {
     NSLog(@"%d",a-b);
     } 创建了一个匿名的block变量
    */
    [self useBlock:^(int a, int b) {
        NSLog(@"%d",a-b);
    }];
}

// 根据一个block,这个是根据一个函数指针,或者根据一个功能,执行操作
-(void) useBlock:(myBlock)block
{

        block(2,3);
}


@end
