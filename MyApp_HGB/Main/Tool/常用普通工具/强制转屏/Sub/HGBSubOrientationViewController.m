//
//  HGBSubOrientationViewController.m
//  MyApp_HGB
//
//  Created by huangguangbao on 2018/1/18.
//  Copyright © 2018年 agree.com.cn. All rights reserved.
//

#import "HGBSubOrientationViewController.h"

@interface HGBSubOrientationViewController ()

@end

@implementation HGBSubOrientationViewController
#pragma mark life

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createNavigationItem];//导航栏
    [self viewSetUp];//UI


}
#pragma mark 导航栏
//导航栏
-(void)createNavigationItem
{
    //导航栏
    self.navigationController.navigationBar.barTintColor=[UIColor colorWithRed:0.0/256 green:191.0/256 blue:256.0/256 alpha:1];
    [[UINavigationBar appearance]setBarTintColor:[UIColor colorWithRed:0.0/256 green:191.0/256 blue:256.0/256 alpha:1]];
    //标题
    UILabel *titleLab=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 136*wScale, 16)];
    titleLab.font=[UIFont boldSystemFontOfSize:16];
    titleLab.text=@"屏幕转向工具2";
    titleLab.textAlignment=NSTextAlignmentCenter;
    titleLab.textColor=[UIColor whiteColor];
    self.navigationItem.titleView=titleLab;


    //左键
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"返回"  style:UIBarButtonItemStylePlain target:self action:@selector(returnhandler)];
    [self.navigationItem.leftBarButtonItem setImageInsets:UIEdgeInsetsMake(0, -15, 0, 5)];
    [self.navigationItem.leftBarButtonItem setTintColor:[UIColor whiteColor]];

}
//返回
-(void)returnhandler{
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark UI
-(void)viewSetUp{
    self.view.backgroundColor=[UIColor redColor];
}

// 是否支持转屏
- (BOOL)shouldAutorotate
{
    return YES;
}
// 返回nav栈中的最后一个对象支持的旋转方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}
// 返回nav栈中最后一个对象,坚持旋转的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}
@end
