//
//  ViewController.m
//  级联菜单
//
//  Created by 阿拉斯加的狗 on 16/8/15.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "ViewController.h"
#import "WKCategoryController.h"
#import "WKSubCategoryController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat W = self.view.frame.size.width * 0.5;
    CGFloat H = self.view.frame.size.height;

    //右边tableViewController
    WKSubCategoryController *subVc = [[WKSubCategoryController alloc]init];
    [self.view addSubview:subVc.view];
    subVc.view.frame = CGRectMake(W, 20, W, H);
    [self addChildViewController:subVc];
    
    //左边tableViewController
    WKCategoryController *categoryVc = [[WKCategoryController alloc]init];
    [self.view addSubview:categoryVc.view];
       categoryVc.view.frame = CGRectMake(0, 20, W, H);
    categoryVc.delegate = subVc;
    [self addChildViewController:categoryVc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
