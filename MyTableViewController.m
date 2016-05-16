//
//  MyTableViewController.m
//  QQ音乐
//
//  Created by tarena01_08 on 16/4/23.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *logincell;
@property (strong, nonatomic) IBOutlet UITableViewCell *GreenD;
@property (strong, nonatomic) IBOutlet UITableViewCell *liuliangCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *chezaiCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *chuangeCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *switchCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *ExitCell;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
      self.navigationItem.title=@"用户设置";
    NSLog(@"shabi");
    NSLog(@"nc");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 1:
            return 4;
        
            case 2:
            return 3;
        
            
        default:
            return 1;
            break;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
            return self.logincell;
        case 1:
            if (indexPath.row == 0)
            {
                return self.GreenD;
            }
            else if (indexPath.row == 1)
            {
                return self.liuliangCell;
            }
            else if (indexPath.row == 2) {
                return self.chezaiCell;
            }
            else
            {
                return self.chuangeCell;
            }
        case 2:
            return self.switchCell;
            break;
               default:
            return self.ExitCell;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        //第一个分区每行高度是 100
        return 100;
    }
    //其他都是44
    return 44;
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
