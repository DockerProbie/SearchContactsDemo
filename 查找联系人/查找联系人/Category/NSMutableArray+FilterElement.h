//
//  NSMutableArray+FilterElement.h
//  剧能玩2.1
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (FilterElement)
/**
 *   过滤掉相同的元素
 *
 *   @return 返回一个数组
 */
- (NSMutableArray*)filterTheSameElement;



@end
