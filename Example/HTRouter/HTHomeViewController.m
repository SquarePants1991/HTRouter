//
//  HTViewController.m
//  HTRouter
//
//  Created by tomcat2088 on 09/19/2016.
//  Copyright (c) 2016 tomcat2088. All rights reserved.
//

#import "HTHomeViewController.h"
#import "HTRouter/HTRouter.h"

@interface HTHomeViewController () <HTRouterViewControllerInstantiation>

@end

@implementation HTHomeViewController

HTRouterInitPageFromStoryboard(@"Main", @"HTHomeViewController")

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            [[HTRouter shared] navigateTo:@"HTA" arguments:nil animated:NO];
            break;
        case 1:
            [[HTRouter shared] navigateWithArguments:nil fullRouter:@[@"HTTab:HTA",@"HTHome",@"HTA"]];
            break;
        case 2:
            [[HTRouter shared] presentAsDialog:@"HTDialog" arguments:nil];
            break;
        case 3:
            [[HTRouter shared] navigateWithArguments:nil fullRouter:@[@"HTTab:HTRed",@"HTHome",@"#HTDialog"]];
            break;
        case 4:
            [[HTRouter shared] navigateWithArguments:nil fullRouter:@[@"HTTab:HTRed"]];
            break;
        case 5:
            [[HTRouter shared] goBackToFirstOf:@"HTTab:HTRed"];
            [[HTRouter shared] presentAsDialog:@"HTDialog"];
//            [[HTRouter shared] navigateWithArguments:nil fullRouter:@[@"HTTab:HTA",@"#HTDialog"]];
            break;
        default:
            break;
    }
}


@end
