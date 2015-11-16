//
//  UserFollowSearchResultViewController.m
//  剧能玩2.1
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//

#import "UserFollowSearchResultViewController.h"
#import "FollwTableViewCell.h"
#import "FollowModel.h"
#import "UIView+MHCommon.h"
@interface UserFollowSearchResultViewController ()
@property (nonatomic,strong) NSMutableArray *searchList;

@end

@implementation UserFollowSearchResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"FollowTableViewCell";
    FollwTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [FollwTableViewCell viewFromBundle];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    FollowModel *model = [self.dataSource objectAtIndex:indexPath.row];
    cell.nickNmaeLabel.text = model.nickname;
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([self.delegate respondsToSelector:@selector(resultViewController:didSelectFollowModel:)]) {
        [self.delegate resultViewController:self didSelectFollowModel:self.dataSource[indexPath.row]];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}


@end
