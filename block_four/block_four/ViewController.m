//
//  ViewController.m
//  block_four
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"
#import "BlockAlter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
      BlockAlter *alter=[[BlockAlter alloc] initWithTitle:@"程序测试" message:@"11111" useblock:
       ^(NSInteger a) {
          NSLog(@"%d",a);
      }  
    cancelButtonTitle:@"取消" otherButtonTitles:@"确定",@"不知道",nil];
    [alter show];
    [alter release];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
