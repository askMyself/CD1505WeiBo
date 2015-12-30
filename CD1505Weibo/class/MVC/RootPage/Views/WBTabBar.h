//
//  WBTabBar.h
//  CD1505Weibo
//
//  Created by HeHui on 15/12/29.
//  Copyright (c) 2015年 Hawie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol WBTabBarDelegate <NSObject>

- (void)passIndex:(NSInteger)index;

@end

typedef void(^PassIndex)(NSInteger index);
typedef void(^PlusBtnPressesBlock)();
@interface WBTabBar : UIView

/** 用来传递 title image等信息*/
@property (nonatomic,strong) UITabBarItem *tabBarItem;


@property (nonatomic,weak)id <WBTabBarDelegate> delegate;
//标签选项的index
@property (nonatomic,copy) PassIndex passIndex;
//中间加号按钮点击回调block
@property(nonatomic,copy)PlusBtnPressesBlock plusBlock;


@end
