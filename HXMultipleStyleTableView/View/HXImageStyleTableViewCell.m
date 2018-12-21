//
//  HVImageStyleTableViewCell.m
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXImageStyleTableViewCell.h"
#import "HXImageModel.h"

@interface HXImageStyleTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;

@property (nonatomic, strong) HXImageModel *imageModel;

@end

@implementation HXImageStyleTableViewCell

- (void)setModel:(HXBaseModel *)model {
    self.imageModel = (HXImageModel *)model;
}

- (void)setImageModel:(HXImageModel *)imageModel {
    _imageModel = imageModel;
    self.topLabel.text = imageModel.title;
    self.bottomLabel.text = imageModel.subTitle;
    self.backgroundImageView.image = [UIImage imageNamed:imageModel.image];
}

@end
