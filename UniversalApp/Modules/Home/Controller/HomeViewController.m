//
//  HomeViewController.m
//  MiAiApp
//
//  Created by 徐阳 on 2017/5/18.
//  Copyright © 2017年 徐阳. All rights reserved.
//

#import "HomeViewController.h"
#import "RootWebViewController.h"
#import "LoginViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"主页";
    
    [self addNavigationItemWithTitles:@[@"pre网页"] isLeft:NO target:self action:@selector(naviBtnClick:) tags:@[@1002]];
}

-(void)naviBtnClick:(UIButton *)btn{
//    [kAppDelegate.mainTabBar setRedDotWithIndex:3 isShow:YES];
    RootNavigationController *loginNavi =[[RootNavigationController alloc] initWithRootViewController:[[RootWebViewController alloc] initWithUrl:@"http://www.hao123.com"]];
    [kRootViewController presentViewController:loginNavi animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
