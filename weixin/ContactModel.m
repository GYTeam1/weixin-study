//
//  ContactModel.m
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "ContactModel.h"
#import "NSString+Utils.h"
@implementation ContactModel
- (void)setName:(NSString*)name{
    if (name) {
        _name=name;
        _pinyin=_name.pinyin;
    }
}
- (instancetype)initWithDic:(NSDictionary *)dic{
    //    ContactModel *contact = [ContactModel alloc] init
    self.name = [dic objectForKey:@"name"];
    self.portrait = [dic objectForKey:@"portrait"];
    
    return self;
}
@end
