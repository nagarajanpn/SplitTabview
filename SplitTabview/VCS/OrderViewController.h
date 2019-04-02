//
//  OrderViewController.h
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface OrderViewController : UIViewController<DetailViewDelegate,UISplitViewControllerDelegate>
@property (strong, nonatomic) UISplitViewController *splitVC;
@property (strong, nonatomic) MyTableViewController *myTABLEVC;
@end

NS_ASSUME_NONNULL_END
