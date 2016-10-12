//
//  ContactModel.h
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//


#import <UIKit/UIKit.h>
@interface ContactModel : NSObject
@property (nonatomic,strong) NSString *portrait;
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *pinyin;

- (instancetype)initWithDic:(NSDictionary *)dic;
@end
