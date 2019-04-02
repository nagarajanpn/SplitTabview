//
//  MyTableViewController.m
//  SplitTabview
//
//  Created by wflogin on 01/04/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

#import "MyTableViewController.h"
#import "ProductViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController
@synthesize detailDelegate;


- (void)viewDidLoad {
    [super viewDidLoad];
    
 
    
    _my_Tableview.delegate = self;
    _my_Tableview.dataSource = self;
    
   
    
    [self.detailDelegate sendSelectedNavController:@"STR"];
    NSArray *ArrayForInformation;
    NSString *ToCollectData;
    
    NSString *neverColectiontheData;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    ProductViewController *vc = self.tabBarController.viewControllers[1];
//
//    [self.tabBarController setSelectedIndex:1];
//
//    [self.tabBarController setSelectedViewController:vc];
    

  //  [detailDelegate sendSelectedNavController:@"STR"];
    
//    ProductViewController *vc1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductViewController"];
//    [self.navigationController pushViewController:vc1 animated:YES];
    
    
    //Notification
    [NSNotificationCenter.defaultCenter postNotificationName:(@"NotificationIdentifier") object:nil];
    //NSNotificationCenter.defaultCenter().postNotificationName("NotificationIdentifier", object: nil)
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
