//
//  WKCategoryController.m
//  级联菜单
//
//  Created by 阿拉斯加的狗 on 16/8/15.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "WKCategoryController.h"
#import "WKCategory.h"
@interface WKCategoryController ()

/** 分类数组 */
@property (nonatomic,strong)NSArray *categorys;

@end

@implementation WKCategoryController

/** 懒加载 */
- (NSArray *)categorys {
    if (_categorys == nil) {
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"categories.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *categoryArray = [NSMutableArray array];
        
        for (NSDictionary *dict in dictArray) {
            
            WKCategory *category = [WKCategory categoryWithDict:dict];
            [categoryArray addObject:category];
        }
        _categorys = categoryArray;
    }

    return _categorys;
}


static NSString *ID = @"category";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.categorys.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    WKCategory *categoty = self.categorys[indexPath.row];
    cell.textLabel.text = categoty.name;
    cell.textLabel.highlightedTextColor = [UIColor blackColor];
    cell.imageView.image = [UIImage imageNamed:categoty.icon];
    cell.imageView.highlightedImage = [UIImage imageNamed:categoty.highlighted_icon];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;

}

//选择选中进行选择
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    if ([self.delegate respondsToSelector:@selector(categoryController:DidSelectSubCategory:)]) {
        
        WKCategory *category = self.categorys[indexPath.row];
        
        [self.delegate categoryController:self DidSelectSubCategory:category.subcategories];
        
    }

}


@end
