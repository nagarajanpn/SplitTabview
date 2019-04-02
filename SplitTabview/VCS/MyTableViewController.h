//
//  MyTableViewController.h
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN



@protocol DetailViewDelegate <NSObject>
@required
- (void)sendSelectedNavController:(NSString *)myStr;
@end
@interface MyTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *my_Tableview;
@property (nonatomic, retain) id<DetailViewDelegate> detailDelegate;
@property (nonatomic, strong) MyTableViewController *tablevc;

@end

NS_ASSUME_NONNULL_END
