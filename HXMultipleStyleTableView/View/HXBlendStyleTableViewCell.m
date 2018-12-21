//
//  HVBlendStyleTableViewCell.m
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXBlendStyleTableViewCell.h"
#import "HXBlendModel.h"

@interface HXBlendStyleTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

@property (nonatomic, strong) HXBlendModel *blendModel;

@end

@implementation HXBlendStyleTableViewCell

- (void)setModel:(HXBaseModel *)model {
    self.blendModel = (HXBlendModel *)model;
}

- (void)setBlendModel:(HXBlendModel *)blendModel {
    _blendModel = blendModel;
    self.topLabel.text = blendModel.title;
    self.bottomLabel.text = blendModel.subTitle;
    self.leftImageView.image = [UIImage imageNamed:blendModel.image];
}

@end
