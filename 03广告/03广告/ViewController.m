//
//  ViewController.m
//  03广告
//
//  Created by 章芝源 on 15/10/31.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>
@interface ViewController ()<ADBannerViewDelegate> //遵守协议


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewBottomConstrain;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  广告加载失败的时候执行
 */
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    NSLog(@"didFailToReceiveAdWithError");
}

/**
 *
 然后把它关闭的时候执行
 */
- (void)bannerViewActionDidFinish:(ADBannerView *)banner {
    NSLog(@"actionDidFinish");
}

/**
 *  广告加载完成的时候执行
 */
- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    NSLog(@"didLoadAd");
    self.viewBottomConstrain.constant = 50;
    
    [UIView animateWithDuration:1.0 animations:^{
        [self.view layoutIfNeeded];
        
    }];
}

/**
 *  广告即将加载的时候执行
 */
- (void)bannerViewWillLoadAd:(ADBannerView *)banner {
    NSLog(@"willLoadAd");
}

@end
