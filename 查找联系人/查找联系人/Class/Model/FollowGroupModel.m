//
//  ViewController.h
//  WebView
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//


#import "FollowGroupModel.h"
#import "PinYinForObjc.h"
#import "FollowModel.h"
@implementation FollowGroupModel

+ (instancetype)getGroupsWithArray:(NSMutableArray*)dataArray groupTitle:(NSString*)title
{
    NSMutableArray *tempArray = [NSMutableArray array];
    FollowGroupModel *group = [[FollowGroupModel alloc] init];
    for (NSString *str in dataArray)
    {
        NSString *header = [PinYinForObjc chineseConvertToPinYinHead:str];
        if ([header isEqualToString:title])
        {
            FollowModel *followM = [[FollowModel alloc] init];
            followM.img_Url = @"";
            followM.nickname = str;
            [tempArray addObject:followM];
        }
    }
    group.groupTitle = title;
    group.follows = tempArray;
    return group;
}
@end
