//
//  HTAViewController.m
//  HTRouter
//
//  Created by wangyang on 2016/9/30.
//  Copyright © 2016年 tomcat2088. All rights reserved.
//

#import "HTAViewController.h"
#import <HTRouter/HTRouter.h>

@interface HTAViewController () <HTRouterViewControllerInstantiation>

@end

@implementation HTAViewController

HTRouterInitPageFromStoryboard(@"Main", @"HTAViewController")

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)showDialogClicked:(id)sender {
    [[HTRouter shared] presentAsDialog:@"HTDialog"];
}

- (IBAction)backButtonClicked:(id)sender {
    [[HTRouter shared] goBackWithArguments:@{@"a":@"ff"}];
}

@end
