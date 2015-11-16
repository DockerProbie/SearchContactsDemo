//
//  FollwTableViewCell.m
//  剧能玩2.1
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//

#import "FollwTableViewCell.h"

@implementation FollwTableViewCell

- (void)awakeFromNib {
    self.headImageView.layer.cornerRadius = 25;
    self.headImageView.layer.masksToBounds = YES;
}

@end
