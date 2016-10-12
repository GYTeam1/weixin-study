//
//  WeixinTableViewCell.h
//  weixin
//
//  Created by guoyi on 16/10/12.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "ContactTableViewCell.h"
#import <UIKit/UIKit.h>
@class weixinModel;

@interface WeixinTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headimage;

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *content;


//通过一个tableView来创建一个cell
+(instancetype)cellWithTableView:(UITableView *)tableView;

//微信模型
@property (nonatomic, strong) weixinModel *weixin;

//@property (nonatomic,strong) UILabel *contentLabel;//最新消息记录
@end
