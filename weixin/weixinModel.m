//
//  weixinModel.m
//  weixin
//
//  Created by guoyi on 16/10/12.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "weixinModel.h"

@implementation weixinModel
-(instancetype)initWithDict:(NSDictionary*)dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)weixinModleWithDict:(NSDictionary*)dict
{
    return [[weixinModel alloc]initWithDict:dict];
}


@end
