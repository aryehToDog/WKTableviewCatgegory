//
//  WKCategory.h
//  级联菜单
//
//  Created by 阿拉斯加的狗 on 16/8/15.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKCategory : NSObject

/** 姓名 */
@property (nonatomic,copy)NSString *name;
/** 图片 */
@property (nonatomic,copy)NSString *icon;
/** 选中图片 */
@property (nonatomic,copy)NSString *highlighted_icon;
/** 数组 */
@property (nonatomic,strong)NSArray *subcategories;

+ (instancetype)categoryWithDict: (NSDictionary *)dict;

@end
