//
//  HHDelegateViewController.h
//  BlockAndDelegateDemo
//
//  Created by 韩继宏 on 16/3/27.
//  Copyright © 2016年 Hanjihong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HHDelegateViewController;
@protocol HHDelegateViewController <NSObject>

- (void)delegateClick:(NSString *)msgStr color:(UIColor *)color;

@end

@interface HHDelegateViewController : UIViewController

@property (nonatomic, weak) id<HHDelegateViewController>delegate;

@end
