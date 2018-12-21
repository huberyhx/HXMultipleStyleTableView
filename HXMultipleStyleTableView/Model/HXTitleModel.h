//
//  HXTitleModel.h
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXBaseModel.h"

@interface HXTitleModel : HXBaseModel

+ (instancetype)createWithTitle:(NSString *)title subTitle:(NSString *)subTitle;

@end
