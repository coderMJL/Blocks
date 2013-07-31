//
//  ViewController.m
//  block_three
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


typedef void (^myblock)();
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    /*----block 内存管理--------
     
       局部变量对象 会自动retain 当回调结束的时候 autorese
    
       声明为__block 的全部变量 不会retain 
     
        访问对象的某个变量时，对象也会增加+1；
     
        使用block_copy();将block 把栈放到堆上。
     */
    
    
    NSLog(@"%lu",(unsigned long)self.retainCount);
    myblock block=^(){
    
        NSLog(@"%lu",(unsigned long)self.retainCount);

    };
    
    block();
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
