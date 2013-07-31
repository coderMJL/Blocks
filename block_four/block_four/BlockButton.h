//
//  BlockButton.h
//  block_four
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

typedef void (^ActionBlock)();
@interface BlockButton : UIButton
@property (readonly) NSMutableDictionary *event;
@end
