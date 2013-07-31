//
//  TwoViewController.h
//  block_five
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^changeBlock) (NSString *currentStr);

@interface TwoViewController : UIViewController{

}
@property (copy,nonatomic) changeBlock block;

-(void) chageValue:(changeBlock)block3;
- (IBAction)back:(id)sender;

@end
