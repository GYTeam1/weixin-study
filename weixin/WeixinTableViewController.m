//
//  FirstTableViewController.m
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "WeixinTableViewController.h"
#import "WeixinTableViewCell.h"

@interface WeixinTableViewController ()
@property(nonatomic,weak)UIView *coverView;
@end

@implementation WeixinTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickAddButton:(id)sender {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    UIView *cover = [[UIView alloc]init];
    cover.backgroundColor = [UIColor clearColor];
    //cover.backgroundColor = [UIColor redColor];
    cover.frame = window.bounds;
    [window addSubview:cover];
    self.coverView = cover;
    
    UIImageView *menuImageView = [[UIImageView alloc]init];
    menuImageView.image = [UIImage imageNamed:@"MoreFunctionFrame"];
    menuImageView.frame = CGRectMake(cover.bounds.size.width-100, 62, 100, 100);
    [cover addSubview:menuImageView];
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    [cover addGestureRecognizer:tapGR];
}

-(void)tap:(UITapGestureRecognizer *)gr
{
    [self.coverView removeFromSuperview];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"weixinCell";
    //将WeixintableViewCell 类 注册到tableview
  //  [self.tableView registerClass:[WeixinTableViewCell class] forCellReuseIdentifier:cellId];
    WeixinTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
//
    
    if (cell==nil) {
        cell=[[WeixinTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
//    ContactModel *model=_rowArr[indexPath.section][indexPath.row];
    
//   [cell.headImageView setImage:[UIImage imageNamed:model.portrait]];
 //   [cell.nameLabel setText:model.name];
//    [cell.headImageView setImage:[UIImage imageNamed:@"2"]];
//    [cell.nameLabel setText:@"张三"];
//    [cell.contentLabel setText:@"我爱你张三"];
    
    [cell.headimage setImage:[UIImage imageNamed:@"2"]];
    [cell.name setText:@"郭二娃"];
    [cell.content setText:@"我爱你郭二娃"];
    return cell;
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
