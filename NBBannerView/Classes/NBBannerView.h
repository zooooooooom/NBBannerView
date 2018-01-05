//
//  NBBannerView.h
//  页面分离
//
//  Created by xxzx on 2017/12/21.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NBBannerModelProtocol.h"
#import "NBBannerConfig.h"

typedef void(^NBBannerConfigBlock)(NBBannerConfig *config);
typedef void(^NBLoadImageBlock)(UIImageView *imageView, NSURL *url);
typedef void(^NBBannarClickBlock)(NSInteger index);

@interface NBBannerView : UIView

/**
 数据源（这里更新数据）
 */
@property(nonatomic, strong) NSArray<id<NBBannerModelProtocol>> *bannerModels;

/**
 默认的创建方式

 @param bannarConfigBlock 配置当前的一些属性（详见NBBannerConfig这个类）
 @param loadImgBlock 加载image的方式（依照用户使用习惯）
 @param loadBlurEffectBlock 加载模糊图片的方式
 @return 返回自身
 */
+ (instancetype)bannerViewWithConfig:(NBBannerConfigBlock)bannarConfigBlock loadImageBlock:(NBLoadImageBlock)loadImgBlock loadBlurEffectBlock:(NBLoadImageBlock)loadBlurEffectBlock;

/**
 banner的点击回调，在这里赋值即可
 */
@property(nonatomic, copy) NBBannarClickBlock bannarClickBlock;

@end
