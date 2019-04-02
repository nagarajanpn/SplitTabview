//
//  MyTableViewCell.h
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol DetailTableViewDelegate <NSObject>
@required
- (void)sendSelectedNavController1:(NSString *)myStr;
@end

@interface MyTableViewCell : UITableViewCell
@property (nonatomic, strong) id delegate;
@end

NS_ASSUME_NONNULL_END
