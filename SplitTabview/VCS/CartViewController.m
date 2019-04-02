//
//  CartViewController.m
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import "CartViewController.h"
#import "ProductViewController.h"

@interface CartViewController ()

@end

@implementation CartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)viewWillAppear:(BOOL)animated{
    
}
- (IBAction)gotoProduct:(id)sender {
    
    ProductViewController *vc = self.tabBarController.viewControllers[1];
    
    [self.tabBarController setSelectedIndex:1];
    
    [self.tabBarController setSelectedViewController:vc];
    
}

@end
