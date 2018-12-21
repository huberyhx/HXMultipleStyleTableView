//
//  HXImageModel.m
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXImageModel.h"

@implementation HXImageModel

+ (instancetype)createWithImage:(NSString *)image title:(NSString *)title subTitle:(NSString *)subTitle {
    HXImageModel *model = [[HXImageModel alloc] init];
    model.image = image;
    model.title = title;
    model.subTitle = subTitle;
    return model;
}

@end
