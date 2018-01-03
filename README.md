# NBBannerView

[![CI Status](http://img.shields.io/travis/shiyingfeng/NBBannerView.svg?style=flat)](https://travis-ci.org/shiyingfeng/NBBannerView)
[![Version](https://img.shields.io/cocoapods/v/NBBannerView.svg?style=flat)](http://cocoapods.org/pods/NBBannerView)
[![License](https://img.shields.io/cocoapods/l/NBBannerView.svg?style=flat)](http://cocoapods.org/pods/NBBannerView)
[![Platform](https://img.shields.io/cocoapods/p/NBBannerView.svg?style=flat)](http://cocoapods.org/pods/NBBannerView)

## 示例图片

![image](https://github.com/shiyingfeng/NBBannerView/raw/master/Example/Gif/1.gif)

## 使用方式
```iOS
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
```

## Installation

NBBannerView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```iOS
pod 'NBBannerView'
```

## Author

shiyingfeng, 260497176@qq.com

## License

NBBannerView is available under the MIT license. See the LICENSE file for more info.
