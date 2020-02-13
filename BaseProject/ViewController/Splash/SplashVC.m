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
    [self performSelector:@selector(checkAccount)
               withObject:nil afterDelay:3.0];
    
}

- (void)checkAccount {
        UINavigationController *nav = (UINavigationController *)[ _appDelegate viewControllerWithIndentifier:@"NavHome"];
        FeedyAccount *account = [[AppController sharedInstance] getAccountFromUserDefault];
        if (account) {
            [[AppDelegate sharedInstance] setupSideMenu];
        }
        else {
            SelectVC *selectVC = (SelectVC *) [_appDelegate viewControllerWithIndentifier:@"SelectVC"];
            [nav setViewControllers:[NSArray arrayWithObject:selectVC] animated:YES];
            [_appDelegate changeRootViewController:nav];
           
            
            
        }
    }

@end
