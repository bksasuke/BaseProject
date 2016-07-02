//
//  SelectVC.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "SelectVC.h"
#import "FeedyAccount.h"
#import "HomeVC.h"

@implementation SelectVC
- (IBAction)clickRestaurant:(id)sender {
    [self showHome];
}

- (IBAction)clickMakeRecipe:(id)sender {
    [self showHome];
}

- (void)showHome {
    FeedyAccount *acc = [FeedyAccount new];
    [_appController storeAccountToUserDefault:acc];
    UINavigationController *nav = (UINavigationController *)[_appDelegate viewControllerWithIndentifier:@"NavHome"];
    HomeVC *masterVC = (HomeVC *)[_appDelegate viewControllerWithIndentifier:@"HomeVC"];
    [nav setViewControllers:[NSArray arrayWithObject:masterVC] animated:YES];
    
    [_appDelegate changeRootViewController:nav];
    
}
@end
