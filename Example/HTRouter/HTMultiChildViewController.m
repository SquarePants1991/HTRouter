//
//  HTMultiChildViewController.m
//  HTRouter
//
//  Created by wangyang on 2016/9/29.
//  Copyright © 2016年 tomcat2088. All rights reserved.
//

#import "HTMultiChildViewController.h"
#import "HTRouter/HTRouter.h"
#import "HTContentViewController.h"
#import "HTRedViewController.h"

@interface HTMultiChildViewController () <HTRouterViewControllerInstantiation>

@end

@implementation HTMultiChildViewController

HTRouterInitPage()

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:[[HTRouter shared] viewControllerInstanceWithName:@"HT"]];
    [self addChildViewController:[[HTRouter shared] viewControllerInstanceWithName:@"HTRed"]];
    [self addChildViewController:[[HTRouter shared] viewControllerInstanceWithName:@"HTContent"]];
    
    // Do any additional setup after loading the view.
}

@end
