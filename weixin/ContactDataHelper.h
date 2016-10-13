//
//  ContactDataHelper.h
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  格式化联系人列表
 */

@interface ContactDataHelper : NSObject

+ (NSMutableArray *) getFriendListDataBy:(NSMutableArray *)array;
+ (NSMutableArray *) getFriendListSectionBy:(NSMutableArray *)array;

@end
