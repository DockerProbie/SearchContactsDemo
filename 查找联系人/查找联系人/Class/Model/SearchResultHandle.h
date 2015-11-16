//
//  SearchResultHandle.h
//  剧能玩2.1
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  搜索结果的类
 */
@interface SearchResultHandle : NSObject
/**
 *  获取搜索的结果集
 *
 *  @param text 搜索内容
 *
 *  @return 返回结果集
 */
+ (NSMutableArray*)getSearchResultBySearchText:(NSString*)searchText dataArray:(NSMutableArray*)dataArray;

@end
