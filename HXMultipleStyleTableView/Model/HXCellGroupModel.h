//
//  HXCellGroupModel.h
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HXBaseModel.h"

@interface HXCellGroupModel : NSObject

@property (nonatomic, strong) NSArray<HXBaseModel *> *dataArray;
@property (nonatomic, assign) CGFloat sectionHeaderHeight;
@property (nonatomic, copy) NSString *sectionHeaderTitle;
@property (nonatomic, copy) NSString *cellIdentifier;

@end
