//
//  UIView+MHCommon.m
//  PerfectProject
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//

#import "UIView+MHCommon.h"

@implementation UIView (MHCommon)

- (CGFloat)left
{
    return self.frame.origin.x;
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}



- (void)removeAllSubviews
{
    while (self.subviews.count)
    {
        UIView *child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

- (void)frameSet:(NSString *)key value:(CGFloat)value
{
    CGRect rect = self.frame;
    
    if ([@"x" isEqualToString:key]) {
        rect.origin.x = value;
        
    } else if ([@"y" isEqualToString:key]) {
        rect.origin.y = value;
        
    } else if ([@"w" isEqualToString:key]) {
        rect.size.width = value;
        
    } else if ([@"h" isEqualToString:key]) {
        rect.size.height = value;
    }
    
    self.frame = rect;
}

- (void)frameSet:(NSString *)key1 value1:(CGFloat)value1 key2:(NSString *)key2 value2:(CGFloat)value2
{
    [self frameSet:key1 value:value1];
    [self frameSet:key2 value:value2];
}

/**
 *  从 bundle 加载一个 view
 *
 *  @param name 名字
 *
 *  @return 返回一个 view
 */
+ (instancetype)viewFromBundle
{
    NSString *className = NSStringFromClass([self class]);
    id object = [[[NSBundle mainBundle]loadNibNamed:className owner:nil options:nil]lastObject];
    if ([object isKindOfClass:[self class]]) {
        return object;
    }
    return  nil;
}

@end
