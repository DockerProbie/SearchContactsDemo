//
//  CustomSearchViewController.h
//  剧能玩2.1
//
//  Created by Docker on 15/11/16.
//  Copyright © 2015年 Docker. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomSearchViewControllerDelegate <NSObject,UISearchControllerDelegate>

@required
/**
 *  点击了搜索按钮的返回按钮
 */
- (void)searchControllerBackButtonClick:(UISearchController *)searchController;
@end

@interface CustomSearchViewController : UISearchController
/**
 *  delegate
 */
@property (nonatomic,assign) id<CustomSearchViewControllerDelegate>delegateCustom;

@end
