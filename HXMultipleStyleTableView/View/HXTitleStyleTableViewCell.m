//
//  HVTitleStyleTableViewCell.m
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXTitleStyleTableViewCell.h"
#import "HXTitleModel.h"

@interface HXTitleStyleTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

@property (nonatomic, strong) HXTitleModel *titleModel;

@end

@implementation HXTitleStyleTableViewCell

- (void)setModel:(HXBaseModel *)model {
    self.titleModel = (HXTitleModel *)model;
}

- (void)setTitleModel:(HXTitleModel *)titleModel {
    _titleModel = titleModel;
    self.topLabel.text = titleModel.title;
    self.bottomLabel.text = titleModel.subTitle;
}

@end
