//
//  WeixinTableViewCell.m
//  weixin
//
//  Created by guoyi on 16/10/12.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "WeixinTableViewCell.h"
#import "weixinModel.h"

@interface WeixinTableViewCell ()

@end

@implementation WeixinTableViewCell

-(void)setWeixin:(weixinModel *)weixin{
    _weixin = weixin;
    self.headimage.image = [UIImage imageNamed:weixin.image];
    self.name.text = weixin.name;
    self.content.text = weixin.content;
}

@end
