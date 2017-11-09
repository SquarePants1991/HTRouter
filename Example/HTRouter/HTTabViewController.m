//
//  HTTabViewController.m
//  HTRouter
//
//  Created by wangyang on 2016/9/30.
//  Copyright © 2016年 tomcat2088. All rights reserved.
//

#import "HTTabViewController.h"
#import "HTRouter/HTRouter.h"

@interface HTTabViewController () <HTRouterViewControllerInstantiation>

@end

@implementation HTTabViewController

HTRouterInitPage()

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:[[HTRouter shared] viewControllerInstanceWithName:@"HTA"]];
    [[self.childViewControllers lastObject] setTitle:@"HTA"];
    
    [self addChildViewController:[[HTRouter shared] viewControllerInstanceWithName:@"HTHome"]];
    [[self.childViewControllers lastObject] setTitle:@"HTHome"];
    
    [self addChildViewController:[[HTRouter shared] viewControllerInstanceWithName:@"HTRed"]];
    [[self.childViewControllers lastObject] setTitle:@"HTRed"];
}

@end
