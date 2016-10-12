//
//  weixinModel.h
//  weixin
//
//  Created by guoyi on 16/10/12.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weixinModel : NSObject
//名称
@property(nonatomic,copy)NSString *name;

//内容
@property(nonatomic,copy)NSString *content;

//图像
@property(nonatomic,copy)NSString *image;

-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)weixinModleWithDict:(NSDictionary*)dict;

@end
