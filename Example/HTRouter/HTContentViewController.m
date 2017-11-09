//
//  HTContentViewController.m
//  HTRouter
//
//  Created by wangyang on 2016/9/28.
//  Copyright © 2016年 tomcat2088. All rights reserved.
//

#import "HTContentViewController.h"
#import <HTRouter/HTRouter.h>

@interface HTContentViewController () <HTRouterViewControllerInstantiation,HTRouterViewControllerDialog>

@end

@implementation HTContentViewController

HTRouterInitPage()
HTRouterInitDialog(20, 200)

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor greenColor]];
    self.title = @"Content";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if(self.completedBlock) {
        self.completedBlock(nil);
    }
}

@end
