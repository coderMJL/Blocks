//
//  ViewController.m
//  Bloks_One
//
//  Created by baxiang on 13-7-30.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"

int sum(int a,int b);

int sum(int a,int b){
    return a+b;
}

int (^sumBlock)(int,int);

@interface ViewController ()


//第二种声明方法 个人推荐这种方式  申明block类型
typedef int (^myblockTwo) (int,int);
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //申明一个block变量 分别是返回类型  block变量名称 输入的参数
    //通过关键词避免循环引用
   __block int b = 100;
    
    int (^myBlock) (int a);
    //创建一个block
    myBlock=^(int a){
        
        b = 10001;
        return a+7;
    };
    
    /*
     //声明与创建写在一起
     //创建的时候吧第一个括号变成^就可以了
     int (^myblock) (int a)=^(int a){
     
     return a+7
     }
     
     
    */
    
    //调用blocks
    NSLog(@"%d",myBlock(10));
    NSLog(@"%d",sum(10, 10));
    int (*sumPointer)(int a,int b) = sum;
    NSLog(@"%d",sumPointer(10, 10));
    sumBlock = ^(int a,int b){
        
        return a+b;
    };
    
    sumBlock(10,10);
    
    myblockTwo blockTwo=^(int a,int b){
        NSLog(@"a+b=%d",a+b);
        return a+b;
    };
    blockTwo(1,2);
    
    
    
    /*
     例子里面确实没有修改mArrayCount这个局部变量啊。mArrayCount是一个指针，指向一个可变长度的数组。在block里面，并没有修改这个指针，而是修改了这个指针指向的数组。换句话说，mArrayCount是一个整数，保存的是一块内存区域的地址，在block里，并没有改变这个地址，而是读取出这个地址，然后去操作这块地址空间的内容。
     
     这是允许的，因为声明block的时候实际上是把当时的临时变量又复制了一份，在block里即使修改了这些复制的变量，也不影响外面的原始变量。即所谓的闭包。
     
     但是当变量是一个指针的时候，block里只是复制了一份这个指针，两个指针指向同一个地址。所以，在block里面对指针指向内容做的修改，在block外面也一样生效。
     */
    NSMutableArray *mArray = [NSMutableArray arrayWithObjects:@"a",@"b",@"abc",nil];
    NSMutableArray *mArrayCount = [NSMutableArray arrayWithCapacity:1];
    [mArray enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock: ^(id obj,NSUInteger idx, BOOL *stop){
        [mArrayCount addObject:[NSNumber numberWithInt:[obj length]]];
    }];
    
    NSLog(@"%@",mArrayCount);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
