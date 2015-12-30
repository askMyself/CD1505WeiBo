//
//  TitleButton.m
//  CD1505Weibo
//
//  Created by 千锋 on 15/12/30.
//  Copyright (c) 2015年 Hawie. All rights reserved.
//

#import "TitleButton.h"

@implementation TitleButton
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _ratio = 0.9;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imgX = _ratio * CGRectGetWidth(contentRect);
    CGFloat imgY = 0;
    CGFloat imgW = (1 - _ratio) * CGRectGetWidth(contentRect);
    CGFloat imgH = CGRectGetHeight(contentRect);
    return CGRectMake(imgX, imgY, imgW, imgH);
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat tX = 0;
    CGFloat tY = 0;
    CGFloat tW = CGRectGetWidth(contentRect)*_ratio;
    CGFloat tH = CGRectGetHeight(contentRect);
    return CGRectMake(tX, tY, tW, tH);
}
@end
