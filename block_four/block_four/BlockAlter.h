//
//  BlockAlter.h
//  block_four
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^block) (NSInteger);
@interface BlockAlter : UIAlertView<UIAlertViewDelegate>

@property (nonatomic,copy) block Selctblock;

- (id)initWithTitle:(NSString *)title message:(NSString *)message  useblock:(block)block
  cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...;
@end
