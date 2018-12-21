//
//  HXTableViewController.m
//  HXMultipleStyleTableView
//
//  Created by haoxu.wang on 2018/12/20.
//  Copyright © 2018年 haoxu.wang. All rights reserved.
//

#import "HXTableViewController.h"
#import "HXBaseTableViewCell.h"
#import "HXCellGroupModel.h"
#import "HXBlendModel.h"
#import "HXTitleModel.h"
#import "HXImageModel.h"

@interface HXTableViewController ()

@property (nonatomic, strong) NSArray<HXCellGroupModel *> *dataArray;

@end

@implementation HXTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

- (void)setup {
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.tableView.estimatedRowHeight = 200;
    self.tableView.showsVerticalScrollIndicator = NO;
    [self.tableView registerNib:[UINib nibWithNibName:@"HXBlendStyleTableViewCell" bundle:nil] forCellReuseIdentifier:@"HXBlendStyleTableViewCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"HXImageStyleTableViewCell" bundle:nil] forCellReuseIdentifier:@"HXImageStyleTableViewCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"HXTitleStyleTableViewCell" bundle:nil] forCellReuseIdentifier:@"HXTitleStyleTableViewCell"];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray[section].dataArray.count;;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HXCellGroupModel *groupModel = self.dataArray[indexPath.section];
    HXBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:groupModel.cellIdentifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell setModel:groupModel.dataArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    HXCellGroupModel *model = self.dataArray[section];
    if (model.dataArray.count > 0) {
        return model.sectionHeaderHeight;
    }else {
        return 0.01;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    HXCellGroupModel *model = self.dataArray[section];
    NSString *title = model.sectionHeaderTitle;
    CGFloat height = model.sectionHeaderHeight;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, height)];
    view.alpha = 0.87;
    view.backgroundColor = self.tableView.backgroundColor;
    UILabel *label = [[UILabel alloc] init];
    label.text = title;
    label.textColor = [UIColor blackColor];
    label.font = [UIFont fontWithName:@"DINPro-Bold" size:17];
    label.textAlignment = NSTextAlignmentLeft;
    label.numberOfLines = 1;
    label.adjustsFontSizeToFitWidth = YES;
    label.minimumScaleFactor = 0.7;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [view addSubview:label];
    NSDictionary *views = NSDictionaryOfVariableBindings(label);
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-14-[label]-14-|" options:0 metrics:nil views:views]];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[label]-1-|" options:0 metrics:nil views:views]];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01f;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}


#pragma mark - Lazy
- (NSArray<HXCellGroupModel *> *)dataArray {
    if (!_dataArray) {
        HXTitleModel *titleModel1 = [HXTitleModel createWithTitle:@"titleCell----01" subTitle:@"我是 titleCell"];
        HXTitleModel *titleModel2 = [HXTitleModel createWithTitle:@"titleCell----02" subTitle:@"我是 titleCell"];
        HXTitleModel *titleModel3 = [HXTitleModel createWithTitle:@"titleCell----03" subTitle:@"我是 titleCell"];
        HXCellGroupModel *titleCellGroup = [[HXCellGroupModel alloc] init];
        titleCellGroup.dataArray = @[titleModel1, titleModel2, titleModel3];
        titleCellGroup.sectionHeaderHeight = 40;
        titleCellGroup.sectionHeaderTitle = @"titleCell";
        titleCellGroup.cellIdentifier = @"HXTitleStyleTableViewCell";
        
        HXImageModel *imageModel1 = [HXImageModel createWithImage:@"image1" title:@"imageCell----01" subTitle:@"我是 imageCell"];
        HXImageModel *imageModel2 = [HXImageModel createWithImage:@"image2" title:@"imageCell----02" subTitle:@"我是 imageCell"];
        HXImageModel *imageModel3 = [HXImageModel createWithImage:@"image3" title:@"imageCell----03" subTitle:@"我是 imageCell"];
        HXCellGroupModel *imageCellGroup = [[HXCellGroupModel alloc] init];
        imageCellGroup.dataArray = @[imageModel1, imageModel2, imageModel3];
        imageCellGroup.sectionHeaderHeight = 40;
        imageCellGroup.sectionHeaderTitle = @"imageCell";
        imageCellGroup.cellIdentifier = @"HXImageStyleTableViewCell";
        
        HXBlendModel *blendModel1 = [HXBlendModel createWithImage:@"image4" title:@"blendCell----01" subTitle:@"我是 blendCell"];
        HXBlendModel *blendModel2 = [HXBlendModel createWithImage:@"image5" title:@"blendCell----02" subTitle:@"我是 blendCell"];
        HXBlendModel *blendModel3 = [HXBlendModel createWithImage:@"image6" title:@"blendCell----03" subTitle:@"我是 blendCell"];
        HXCellGroupModel *blendCellGroup = [[HXCellGroupModel alloc] init];
        blendCellGroup.dataArray = @[blendModel1, blendModel2, blendModel3];
        blendCellGroup.sectionHeaderHeight = 40;
        blendCellGroup.sectionHeaderTitle = @"blendCell";
        blendCellGroup.cellIdentifier = @"HXBlendStyleTableViewCell";

        _dataArray = @[titleCellGroup, imageCellGroup, blendCellGroup];
    }
    return _dataArray;
}

@end
