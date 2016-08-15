//
//  WKCategory.m
//  级联菜单
//
//  Created by 阿拉斯加的狗 on 16/8/15.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "WKCategory.h"

@implementation WKCategory

+ (instancetype)categoryWithDict: (NSDictionary *)dict {

    WKCategory *category = [[WKCategory alloc]init];

    [category setValuesForKeysWithDictionary:dict];
    return category;
}

@end
