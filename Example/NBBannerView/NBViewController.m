//
//  NBViewController.m
//  NBBannerView
//
//  Created by shiyingfeng on 01/03/2018.
//  Copyright (c) 2018 shiyingfeng. All rights reserved.
//

#import "NBViewController.h"
#import <NBBannerView/NBBannerView.h>
#import "Masonry.h"
#import "BannerModel.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface NBViewController ()

@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    NSArray *arrData = @[@"http://g.hiphotos.baidu.com/image/pic/item/d8f9d72a6059252d62bebac53d9b033b5ab5b942.jpg",
                         @"http://pic9.nipic.com/20100916/2531170_131413079748_2.jpg",
                         @"https://ss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=159d20d3788da977512f802b8050f872/91529822720e0cf388c7ad1b0146f21fbe09aa1a.jpg",
                         @"http://img.zcool.cn/community/0117e2571b8b246ac72538120dd8a4.jpg@1280w_1l_2o_100sh.jpg",
                         @"http://pic1.ooopic.com/uploadfilepic/sheji/2009-11-16/OOOPIC_hali715_20091116a2539111a47d36e0.jpg"];
    
    
    NBBannerView *bannerV = [NBBannerView bannerViewWithConfig:^(NBBannerConfig *config) {
//        config.blurEffectViewColor = [UIColor redColor];
        config.showBlurEffectView = YES;
        config.showText = NO;
//        config.textColor = [UIColor purpleColor];
//        config.textFontSize = 36;
    } loadImageBlock:^(UIImageView *imageView, NSURL *url) {
        [imageView sd_setImageWithURL:url placeholderImage:nil];
    } loadBlurEffectBlock:^(UIImageView *imageView, NSURL *url) {
        [imageView sd_setImageWithURL:url placeholderImage:nil];
    }];
    [self.view addSubview:bannerV];
    [bannerV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(64);
        make.left.right.equalTo(self.view);
        make.height.equalTo(bannerV.mas_width).multipliedBy(0.6);
    }];
    
    NSMutableArray *arrM = [NSMutableArray array];
    for (int i = 0; i<arrData.count; i++) {
        BannerModel *bannerM = [[BannerModel alloc] init];
        bannerM.imageURL = arrData[i];
//        bannerM.title = [NSString stringWithFormat:@"%zd",i];
        [arrM addObject:bannerM];
    }
    
    bannerV.bannerModels = arrM;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
