//
//  HTRedViewController.m
//  HTRouter
//
//  Created by wangyang on 2016/9/30.
//  Copyright © 2016年 tomcat2088. All rights reserved.
//

#import "HTRedViewController.h"
#import "HTRouter/HTRouter.h"

@interface HTRedViewController () <HTRouterViewControllerInstantiation>

@end

@implementation HTRedViewController

HTRouterInitPage()

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}
@end
