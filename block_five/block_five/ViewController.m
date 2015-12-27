//
//  ViewController.m
//  block_five
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)change:(id)sender {
    TwoViewController *two=[[TwoViewController alloc] init];
    //two执行了一个函数,修改了本控制的界面
//    [two chageValue:^(NSString *currentStr) {
//        self.ShowText.text=currentStr;
//         NSLog(@"%@",currentStr);
//    }];

    [self presentViewController:two animated:YES completion:^{
        
    }];
    
    //对two的变量进行初始化,当two执行这个block的时候回去b里面找这个函数
    two.block=^(NSString *a){
    
        self.ShowText.text=a;
         NSLog(@"%@",a);
    };
    
    
}
- (void)dealloc {
    [_ShowText release];
    [super dealloc];
}
@end
