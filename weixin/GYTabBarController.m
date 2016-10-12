//
//  GYTabBarController.m
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "GYTabBarController.h"

@interface GYTabBarController ()

@end

@implementation GYTabBarController

+(void)initialize
{
    if (self == [GYTabBarController class]) {
        UITabBar *tabBar = [UITabBar appearance];
        // 1.设置tabbar的背景
        [tabBar setBackgroundImage:[UIImage imageNamed:@"toolbarBkg_white"]];
        
        // 2.设置tabBar中某个项被选中时的背景图
        //[tabBar setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar_selected_back"]];
        
        // 3.获取TabBarItem的外观实例
        UITabBarItem *barItem = [UITabBarItem appearance];
        
        // barItem中文字的位置偏移量
        [barItem setTitlePositionAdjustment:UIOffsetMake(0, -1)];
        
        NSMutableDictionary *selectedAttributes = [NSMutableDictionary dictionary];
        selectedAttributes[NSForegroundColorAttributeName] = [UIColor colorWithRed:26/255.0 green:178/255.0 blue:10/255.0 alpha:1];
        selectedAttributes[NSFontAttributeName] = [UIFont systemFontOfSize:11];
        
        [barItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
        
        //设置item没有被选中时的字体颜色
        NSMutableDictionary *normalAttributes = [NSMutableDictionary dictionary];
        normalAttributes[NSForegroundColorAttributeName] = [UIColor colorWithRed:103/255.0 green:103/255.0 blue:103/255.0 alpha:1.0];
        normalAttributes[NSFontAttributeName] = [UIFont systemFontOfSize:11];
        [barItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
