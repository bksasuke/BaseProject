//
//  SplashVC.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "SplashVC.h"
#import "FeedyAccount.h"
#import "HomeVC.h"
#import "SelectVC.h"
@implementation SplashVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self checkAccount];
}

- ( void) checkAccount {
        UINavigationController *nav = (UINavigationController *)[ _appDelegate viewControllerWithIndentifier:@"NavHome"];
        FeedyAccount *account = [[AppController sharedInstance] getAccountFromUserDefault];
        if (account) {
            [[AppDelegate sharedInstance] otherMenu];
            HomeVC *homeVC = (HomeVC*) [_appDelegate viewControllerWithIndentifier:@"HomeVC"];
            [nav setViewControllers:[NSArray arrayWithObject:homeVC] animated:YES];
            [_appDelegate changeRootViewController:nav];
        }
        else {
            SelectVC *selectVC = (SelectVC *) [_appDelegate viewControllerWithIndentifier:@"SelectVC"];
            [nav setViewControllers:[NSArray arrayWithObject:selectVC] animated:YES];
            [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
                [_appDelegate changeRootViewController:nav];
            } completion:^(BOOL finished) {
            }];
            
            
        }
    }

@end
