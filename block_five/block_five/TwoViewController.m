//
//  TwoViewController.m
//  block_five
//
//  Created by baxiang on 13-7-31.
//  Copyright (c) 2013年 巴翔. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()



@end



@implementation TwoViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
   
    [super dealloc];
    Block_release(_block);
    
}
-(void)change:(void (^) (NSString *currentStr))myBlock{
            myBlock(@"传递参数1");
    
}

-(void) chageValue:(changeBlock)block3{
       block3(@"传递参数2");
}
- (IBAction)back:(id)sender {
    
      // _block(@"2222222");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
