//
//  ViewController.m
//  BlockAndDelegateDemo
//
//  Created by 韩继宏 on 16/3/26.
//  Copyright © 2016年 Hanjihong. All rights reserved.
//

#import "ViewController.h"
#import "HHDelegateViewController.h"
#import "HHBlockViewController.h"

@interface ViewController () <HHDelegateViewController>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *delegateBtn = [[UIButton alloc] init];
    delegateBtn.frame = CGRectMake(150, 200, 120, 40);
    [delegateBtn setTitle:@"代理传值" forState:UIControlStateNormal];
    delegateBtn.backgroundColor = [UIColor redColor];
    [delegateBtn addTarget:self action:@selector(delegateBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:delegateBtn];
    
    UIButton *blockBtn = [[UIButton alloc] init];
    blockBtn.frame = CGRectMake(150, CGRectGetMaxY(delegateBtn.frame)+20, 120, 40);
    [blockBtn setTitle:@"block传值" forState:UIControlStateNormal];
    blockBtn.backgroundColor = [UIColor redColor];
    [blockBtn addTarget:self action:@selector(blockBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blockBtn];
}

- (void)delegateBtnClick {
    HHDelegateViewController *delegateVc = [[HHDelegateViewController alloc] init];
    delegateVc.delegate = self;
    [self.navigationController pushViewController:delegateVc animated:YES];
}

- (void)blockBtnClick {
    HHBlockViewController *blockVc = [[HHBlockViewController alloc] init];
    __weak typeof(self) weakSelf = self;
    blockVc.nextVCBlock = ^(NSString *str, UIColor *color) {
        NSLog(@"block传过来的值————>%@, %@", str, color);
        weakSelf.view.backgroundColor = color;
    };
    [self.navigationController pushViewController:blockVc animated:YES];
}

#pragma mark - HHDelegateViewController代理方法
- (void)delegateClick:(NSString *)msgStr color:(UIColor *)color {
    NSLog(@"我是获值方，此方法是在传值方触发————>%@", msgStr);
    self.view.backgroundColor = color;
}

@end
