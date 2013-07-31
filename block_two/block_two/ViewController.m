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
    myBlock addblock=^(int a,int b){
        NSLog(@"%d",a+b);
       
    };
    myBlock multBlock=^(int a,int b){
        NSLog(@"%d",a*b);
    
    };
    
    [self useBlock:addblock];
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


-(void) useBlock:(myBlock)block{

        block(2,3);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
