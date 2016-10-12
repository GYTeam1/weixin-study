//
//  GYNavigationController.m
//  weixin
//
//  Created by guoyi on 16/10/11.
//  Copyright © 2016年 guoyi. All rights reserved.
//

#import "GYNavigationController.h"

@interface GYNavigationController ()

@end

@implementation GYNavigationController
/* 第一次使用这个类或这个类的子类的时候调用  */
+(void)initialize
{
    if (self == [GYNavigationController class])
    {//保证只执行一次
        // 1.获取导航栏的外观实例
        UINavigationBar *bar = [UINavigationBar appearance];
        [bar setBackgroundImage:[UIImage imageNamed:@"navibg"] forBarMetrics:UIBarMetricsDefault];
        [bar setBarStyle:UIBarStyleBlack];
        [bar setTintColor:[UIColor whiteColor]];
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        attributes[NSForegroundColorAttributeName] = [UIColor whiteColor];
        attributes[NSFontAttributeName] = [UIFont boldSystemFontOfSize:18];
        [bar setTitleTextAttributes:attributes];
        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NSLog(@"%s",__func__);
    
    // 显示到导航控制器的第一个界面时,执行viewDidLoad
    // 获取已经设置到导航上的选中后的图片
    // 修改图片的渲染模式,按照原始的样子进行渲染
    // 再把新生成的图片赋给selectedImage
    self.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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
