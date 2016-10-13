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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 修改图片的渲染模式,按照原始的样子进行渲染
    // 再把新生成的图片赋给selectedImage
    self.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
