//
//  ViewController.m
//  Bloks_One
//
//  Created by baxiang on 13-7-30.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


//第二种声明方法 个人推荐这种方式  申明block类型
typedef int (^myblockTwo) (int,int);
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //申明一个block变量 分别是返回类型  block变量名称 输入的参数
    
    int (^myBlock) (int a);
    //创建一个block
    myBlock=^(int a){
    
        return a+7;
    };
    
    /*
      //声明与创建写在一起
       int (^myblock) (int a)=^(int a){
     
          return a+7
     }
     
    
    */
    
    //调用blocks
    NSLog(@"%d",myBlock(10));
    
    
    
    myblockTwo blockTwo=^(int a,int b){
        NSLog(@"a+b=%d",a+b);
        return a+b;
    };
    blockTwo(1,2);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
