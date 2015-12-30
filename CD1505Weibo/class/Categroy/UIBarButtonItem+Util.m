//
//  UIBarButtonItem+Util.m
//  CD1505Weibo
//
//  Created by 千锋 on 15/12/30.
//  Copyright (c) 2015年 Hawie. All rights reserved.
//

#import "UIBarButtonItem+Util.h"

@implementation UIBarButtonItem (Util)
+ (UIBarButtonItem *)generateBarButtonItemWithNorImage:(NSString *)norImage highImage:(NSString *)highImage{
    //创建按钮
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:[UIImage imageNamed:norImage] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    CGSize size = btn.currentImage.size;

    btn.frame = CGRectMake(0, 0, size.width, size.height);
    UIBarButtonItem * item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    return item;

}

@end
