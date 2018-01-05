//
//  NBBannerConfig.h
//  页面分离
//
//  Created by xxzx on 2017/12/21.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NBBannerConfig : NSObject

/**
 圆角（默认为5）
 */
@property(nonatomic, assign) CGFloat cornerRadius;

/**
 文字对其方式
 */
@property(nonatomic, assign) NSTextAlignment textAlignment;

/**
 文字距离左右间距
 */
@property(nonatomic, assign) CGFloat textRightAndLeftSpace;

/**
 文字距离底部间距
 */
@property(nonatomic, assign) CGFloat textBottomSpace;

/**
 字体大小(默认16)
 */
@property(nonatomic, assign) CGFloat textFontSize;

/**
 字体颜色(默认黑色)
 */
@property(nonatomic, strong) UIColor *textColor;

/**
 是否显示文字(默认显示)
 */
@property(nonatomic, assign, getter=isShowText) BOOL showText;

/**
 卡片水平间距(默认10)
 */
@property(nonatomic, assign) CGFloat kCardHorizontalSpace;

/**
 中间的卡片和自身四周间隙
 */
@property(nonatomic, assign) UIEdgeInsets midCardEdgeInsets;

/**
 背景颜色默认clear
 */
@property(nonatomic, strong) UIColor *bgColor;

/**
 指示器圆点默认颜色
 */
@property(nonatomic, strong) UIColor *pageIndicatorTintColor;

/**
 指示器圆点当前选中颜色
 */
@property(nonatomic, strong) UIColor *currentPageIndicatorTintColor;

/**
 是否需要模糊效果
 */
@property(nonatomic, assign, getter=isShowBlurEffectView) BOOL showBlurEffectView;

/**
 定时器时间（默认1秒）
 */
@property(nonatomic, assign) NSTimeInterval timeInterval;


@end
