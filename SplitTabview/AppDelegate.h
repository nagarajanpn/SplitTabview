//
//  AppDelegate.h
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CartViewController.h"
#import "ProductViewController.h"
#import "OrderViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBar;
@property (strong, nonatomic) UISplitViewController *splitVC;

@end

