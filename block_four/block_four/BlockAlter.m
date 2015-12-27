//
//  BlockAlter.m
//  block_four
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "BlockAlter.h"

@implementation BlockAlter

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
//根据,title,message,功能block,cancelButtontile,otherButonTitles,...初始化.
- (id)initWithTitle:(NSString *)title message:(NSString *)message  useblock:(block)block
  cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...{

    self=[self initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    if (self) {
         self.Selctblock=block;
    }
    return self;

}

//根据,alerView,buutonindex,,点击视图按钮的时候回执行,视图也会执行_Selctblock,并传进参数buttonIndex
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

       _Selctblock(buttonIndex);
}


@end
