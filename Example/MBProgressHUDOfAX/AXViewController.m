//
//  AXViewController.m
//  MBProgressHUDOfAX
//
//  Created by axinger on 09/03/2021.
//  Copyright (c) 2021 axinger. All rights reserved.
//

#import "AXViewController.h"

//#import <MBProgressHUDOfAX/MBProgressHUDOfAX.h>

@import MBProgressHUDOfAX;

@interface AXViewController ()

@end

@implementation AXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect topFrame = CGRectZero;
    
    
    UIButton *btn = UIButton.alloc.init;
    [self.view addSubview:btn];
    
    btn.frame = CGRectMake(100, 100, 200, 30);
    btn.backgroundColor = UIColor.orangeColor;
    [btn setTitle:@"showSuccess" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showSuccess) forControlEvents:UIControlEventTouchUpInside];
    topFrame = btn.frame;
    
    {
        UIButton *btn = UIButton.alloc.init;
        [self.view addSubview:btn];
        
        btn.frame = CGRectMake(100, CGRectGetMaxY(topFrame)+20, 200, 30);
        btn.backgroundColor = UIColor.orangeColor;
        [btn setTitle:@"showError" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(showError) forControlEvents:UIControlEventTouchUpInside];
        topFrame = btn.frame;
        
    }
    
    
    {
        
        UIButton *btn = UIButton.alloc.init;
        [self.view addSubview:btn];
        
        btn.frame = CGRectMake(100, CGRectGetMaxY(topFrame)+30, 200, 30);
        btn.backgroundColor = UIColor.orangeColor;
        [btn setTitle:@"showWarning" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(showWarning) forControlEvents:UIControlEventTouchUpInside];
        topFrame = btn.frame;
    }
    {
        
        UIButton *btn = UIButton.alloc.init;
        [self.view addSubview:btn];
        
        btn.frame = CGRectMake(100, CGRectGetMaxY(topFrame)+30, 200, 30);
        btn.backgroundColor = UIColor.orangeColor;
        [btn setTitle:@"没有图片" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(showText) forControlEvents:UIControlEventTouchUpInside];
        topFrame = btn.frame;
    }
    
}

- (void)showSuccess {
    
    [self.view ax_showSuccess:@"成功"];
    
}
- (void)showError {
    
    [MBProgressHUD ax_showError:@"失败"];
}
- (void)showWarning {
    
    [MBProgressHUD ax_showWarning:@"警告"];
}
- (void)showText {
    
    [MBProgressHUD ax_showTitle:@"没有图片"];
}


@end
