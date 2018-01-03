//
//  BannerModel.m
//  HZBannerViewDemo
//
//  Created by xxzx on 2018/1/2.
//  Copyright © 2018年 Null. All rights reserved.
//

#import "BannerModel.h"
#import "NBBannerModelProtocol.h"

@interface BannerModel()<NBBannerModelProtocol>

@end

@implementation BannerModel

- (void)setImageURL:(NSString *)imageURL
{
    _imageURL = imageURL;
    self.adImgURL = [NSURL URLWithString:imageURL];
}

@end
