//
//  AppDelegate.m
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   // self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    UIViewController *cartVC = [[CartViewController alloc]init];
//    [self.window setRootViewController:cartVC];
 
    //[self showSplitViewControllerForIpad];
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
//    
//    UIViewController *cartVC = [[CartViewController alloc]init];
//    UIViewController *productVC = [[ProductViewController alloc]init];
//    UISplitViewController *splitVC = [[OrderViewController alloc]init];
//
//
//    
//    
//    self.tabBar = [[UITabBarController alloc] init];
//    self.tabBar.viewControllers = @[cartVC, productVC, splitVC];
//    [self.tabBar setSelectedIndex:0];
//    self.window.rootViewController = self.tabBar;
//   
//    
//    self.window = [[UIApplication sharedApplication].windows lastObject];
//     [self.window makeKeyAndVisible];
   
//    self.tabBar= (UITabBarController *) self.window.rootViewController;
//    NSLog(@"%lu", self.tabBar.viewControllers.count);
//    UISplitViewController *splitViewController = (UISplitViewController *)nil;
//
//    for(UIViewController *viewController in  self.tabBar.viewControllers){
//        if([viewController.title isEqualToString:@"Master"]){
//            _splitVC= (UISplitViewController *) viewController;
//        }
//    }
//    UIViewController *cartVC = [[CartViewController alloc]init];
//    UIViewController *productVC = [[ProductViewController alloc]init];
//
//
//    UINavigationController *rootNav = [[UINavigationController alloc] initWithRootViewController:cartVC];
//    UINavigationController *detailNav = [[UINavigationController alloc] initWithRootViewController:productVC];
//
//    UINavigationController *navigationController = _splitVC.viewControllers[splitViewController.viewControllers.count-1];
//    navigationController.topViewController.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem;
//    _splitVC.delegate = self;
//    [self.tabBar setSelectedIndex:0];
//       self.window.rootViewController = self.tabBar;
//
//     self.tabBar.viewControllers = @[cartVC,productVC];
//
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)showSplitViewControllerForIpad
{
//    if (self.detailViewManager == nil) {
//        self.detailViewManager = [[DetailsViewManager alloc]init];
//    }
    self.splitVC = [[UISplitViewController alloc]init];
    UIViewController *cartVC = [[CartViewController alloc]init];
    UIViewController *productVC = [[ProductViewController alloc]init];
   
    
    UINavigationController *rootNav = [[UINavigationController alloc] initWithRootViewController:cartVC];
    UINavigationController *detailNav = [[UINavigationController alloc] initWithRootViewController:productVC];
//    self.splitVC.viewControllers = @[rootNav,detailNav];
//    self.window.rootViewController = (UIViewController*)self.splitVC;
    
    self.tabBar = [[UITabBarController alloc] init];
    self.tabBar.viewControllers = @[rootNav,detailNav];
    
//    self.detailViewManager.splitViewController = self.splitVC;
//    self.splitVC.delegate = self.detailViewManager;
//    [self.detailViewManager setDetailViewController:todayViewController];
    
}

@end
