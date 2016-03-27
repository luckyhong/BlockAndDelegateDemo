//
//  HHBlockViewController.h
//  BlockAndDelegateDemo
//
//  Created by 韩继宏 on 16/3/27.
//  Copyright © 2016年 Hanjihong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HHNextVCBlock)(NSString *textField, UIColor *color);

@interface HHBlockViewController : UIViewController

@property (nonatomic, copy)HHNextVCBlock nextVCBlock;

@end
