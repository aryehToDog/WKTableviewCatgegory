//
//  WKCategoryController.h
//  级联菜单
//
//  Created by 阿拉斯加的狗 on 16/8/15.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WKCategoryController;

@protocol WKCategoryControllerDelegate <NSObject>

@optional
- (void)categoryController: (WKCategoryController *)categoryController DidSelectSubCategory:(NSArray *)subcategories;

@end
@interface WKCategoryController : UITableViewController

/** 代理 */
@property (nonatomic,weak)id<WKCategoryControllerDelegate> delegate;

@end
