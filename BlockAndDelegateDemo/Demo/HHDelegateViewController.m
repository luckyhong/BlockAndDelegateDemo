//
//  HHDelegateViewController.m
//  BlockAndDelegateDemo
//
//  Created by 韩继宏 on 16/3/27.
//  Copyright © 2016年 Hanjihong. All rights reserved.
//

#import "HHDelegateViewController.h"

@interface HHDelegateViewController ()

@end

@implementation HHDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(150, 300, 120, 40);
    btn.backgroundColor=[UIColor blueColor];
    [btn setTitle:@"点击传值" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick {
    if ([_delegate respondsToSelector:@selector(delegateClick:color:)]) {
        [_delegate delegateClick:@"我是传值方，代理是什么：是回调，就是在A中发生的事情，发生完成后通知B，只是通知B。。。B只是被通知，并不能左右A中的东西，只是接到指令要做什么事情了" color:[UIColor orangeColor]];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
