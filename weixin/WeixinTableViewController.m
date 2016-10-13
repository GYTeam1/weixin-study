//
//  WeixinTableViewController.m
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "WeixinTableViewController.h"
#import "WeixinTableViewCell.h"
#import "weixinModel.h"

@interface WeixinTableViewController ()
@property(nonatomic,weak)UIView *coverView;
@property (nonatomic, strong) NSMutableArray*wxMArr;
@end

@implementation WeixinTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 50;
}

//单例化懒加载
- (NSMutableArray *)wxMArr{
    if (_wxMArr == nil) {
        _wxMArr = [[NSMutableArray alloc]init];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"weixin" ofType:@"plist"];
        NSArray *dictArr = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *wxMarrl = _wxMArr;
        for (NSDictionary *dict in dictArr) {
            weixinModel *wx = [weixinModel weixinModleWithDict:(NSDictionary*)dict];
            [wxMarrl addObject:wx];
        }
    }
    return _wxMArr;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return self.wxMArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"weixinCell";
    WeixinTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.weixin = self.wxMArr[indexPath.row];
    return cell;
}

@end
