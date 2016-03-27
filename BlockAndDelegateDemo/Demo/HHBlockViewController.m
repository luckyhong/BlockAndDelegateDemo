//
//  HHBlockViewController.m
//  BlockAndDelegateDemo
//
//  Created by 韩继宏 on 16/3/27.
//  Copyright © 2016年 Hanjihong. All rights reserved.
//

#import "HHBlockViewController.h"

@interface HHBlockViewController ()

@end

@implementation HHBlockViewController

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
    if (_nextVCBlock) {
        _nextVCBlock(@"哈哈，我就是block给你传过来的值！", [UIColor yellowColor]);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
