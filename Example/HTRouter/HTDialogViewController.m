//
//  HTDialogViewController.m
//  HTRouter
//
//  Created by wangyang on 2016/9/30.
//  Copyright © 2016年 tomcat2088. All rights reserved.
//

#import "HTDialogViewController.h"

#import <HTRouter/HTRouter.h>

@interface HTDialogViewController () <HTRouterViewControllerInstantiation,HTRouterViewControllerDialog>

@end

@implementation HTDialogViewController

HTRouterInitPageFromStoryboard(@"Main", @"HTDialogViewController")
HTRouterInitDialog(30, 300)

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)closeButtonClicked:(id)sender {
    UIViewController *vc = [[HTRouter shared] lIndexOf:NSClassFromString(@"HTTabViewController") index:1];
    completedBlock(@"closed");
}

@end
