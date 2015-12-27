//
//  ViewController.m
//  block_four
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "ViewController.h"
#import "BlockAlter.h"
#import "BlockButton.h"
#import <objc/runtime.h>

#import <UIKit/UIKit.h>

@interface UILabel (Associate)

- (void) setFlashColor:(UIColor *) flashColor;

- (UIColor *) getFlashColor;

@end

@implementation UILabel (Associate)

static char flashColorKey;

- (void) setFlashColor:(UIColor *) flashColor{
    objc_setAssociatedObject(self, &flashColorKey, flashColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *) getFlashColor{
    return objc_getAssociatedObject(self, &flashColorKey);
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //只的block块只是个静态函数,,在alter点击按钮的时候,执行,吧点击的按钮的index,cchuanjintu
      BlockAlter *alter=[[BlockAlter alloc] initWithTitle:@"程序测试" message:@"11111" useblock:
       ^(NSInteger a) {
          NSLog(@"%d",a);
      }  
    cancelButtonTitle:@"取消" otherButtonTitles:@"确定",@"不知道",nil];
//    [alter show];
    [alter release];
    
    //执行过程,,点击的是偶,alter调用- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    //函数中调用block,
    //block在init方法中定义
    
//    alter = [BlockAlter alloc]initWithTitle:<#(NSString *)#> message:<#(NSString *)#> useblock:^(NSInteger) {
//        
//    } cancelButtonTitle:<#(NSString *)#> otherButtonTitles:<#(NSString *), ...#>
    
    //这里把,UIAlertView的代理方式改为block
    
    //这个的block单纯为这个button服务,
    //addTarget这种可以为多个button服务.
    BlockButton *button =[[BlockButton alloc]initWithFrame:self.view.frame];
    [button handleControlEvent:UIControlEventTouchUpInside withBlock:^{
         NSLog(@".............................");
    }];
    [self.view addSubview:button];
    [button release];
    
    UILabel *lab = [[UILabel alloc] init];
    [lab setFlashColor:[UIColor redColor]];
    NSLog(@"%@", [lab getFlashColor]);
}

@end
