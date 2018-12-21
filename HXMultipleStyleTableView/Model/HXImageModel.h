//
//  HXImageModel.h
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXBaseModel.h"

@interface HXImageModel : HXBaseModel

@property (nonatomic, strong) NSString *image;

+ (instancetype)createWithImage:(NSString *)image title:(NSString *)title subTitle:(NSString *)subTitle;

@end
