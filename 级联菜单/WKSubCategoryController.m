//
//  WKSubCategoryController.m
//  级联菜单
//
//  Created by 阿拉斯加的狗 on 16/8/15.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "WKSubCategoryController.h"

@interface WKSubCategoryController ()
/** 记录分类数组 */
@property (nonatomic,strong)NSArray *subcategories;

@end

@implementation WKSubCategoryController

static NSString *ID = @"subCategory";
- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}

- (void)categoryController:(WKCategoryController *)categoryController DidSelectSubCategory:(NSArray *)subcategories {

    self.subcategories = subcategories;

    [self.tableView reloadData];
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.subcategories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    cell.textLabel.text = self.subcategories[indexPath.row];
    
    return cell;
}

@end
