//
//  OrderViewController.m
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import "OrderViewController.h"
#import "CartViewController.h"
#import "ProductViewController.h"


@interface OrderViewController ()

@end

@implementation OrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   _myTABLEVC = [[MyTableViewController alloc]init];
  // _myTABLEVC.detailDelegate = self;
    
    
    [_myTABLEVC setDetailDelegate:self];
    
    _splitVC.delegate = self;
    OrderViewController *ovc = [[OrderViewController alloc]init];
    
    
    
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
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(methodOfReceivedNotification:) name:@"NotificationIdentifier" object:nil];
   
    
    
}
#pragma mark -Using Notification Center
- (void)methodOfReceivedNotification:(NSNotification *) notification
{
    // [notification name] should always be @"TestNotification"
    // unless you use this method for observation of other notifications
    // as well.
    
    if ([[notification name] isEqualToString:@"NotificationIdentifier"])
        NSLog (@"Successfully received the test notification!");
        ProductViewController *vc = self.tabBarController.viewControllers[1];
    
        [self.tabBarController setSelectedIndex:1];
    
        [self.tabBarController setSelectedViewController:vc];
    
}

- (IBAction)goToProduct:(id)sender {
    
    ProductViewController *vc = self.tabBarController.viewControllers[1];

    [self.tabBarController setSelectedIndex:1];

    [self.tabBarController setSelectedViewController:vc];
    
    /*ProductViewController *vc1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductViewController"];
    [self.navigationController pushViewController:vc1 animated:YES];
    //[self presentViewController:vc1 animated:true completion:nil];*/

}
#pragma mark - Using Protocol
- (void)sendSelectedNavController:(NSString *)myStr{
    
    ProductViewController *vc = self.tabBarController.viewControllers[1];
    
    [self.tabBarController setSelectedIndex:1];
    
    [self.tabBarController setSelectedViewController:vc];

}

- (void)sendSelectedNavController{
    ProductViewController *vc = self.tabBarController.viewControllers[1];
    
    [self.tabBarController setSelectedIndex:1];
    
    [self.tabBarController setSelectedViewController:vc];

}
- (void)viewDidDisappear:(BOOL)animated{
    
}
#pragma mark - splitviewcontroller delegate

//Not Working So Dont Try

@end
