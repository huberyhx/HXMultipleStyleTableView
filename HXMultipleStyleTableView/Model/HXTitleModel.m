//
//  HXTitleModel.m
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXTitleModel.h"

@implementation HXTitleModel

+ (instancetype)createWithTitle:(NSString *)title subTitle:(NSString *)subTitle {
    HXTitleModel *model = [[HXTitleModel alloc] init];
    model.title = title;
    model.subTitle = subTitle;
    return model;
}

@end
