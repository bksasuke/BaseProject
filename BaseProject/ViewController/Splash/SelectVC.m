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
- (void ) viewWillAppear:(BOOL)animated {
//    [self.navigationController.navigationBar setHidden:YES];
    self.view.backgroundColor = [UIColor lightGrayColor];
}
- (IBAction)clickRestaurant:(id)sender {
    [self showHome];
}

- (IBAction)clickMakeRecipe:(id)sender {
    [self showHome];
}

- (void)showHome {
    FeedyAccount *acc = [FeedyAccount new];
    [_appController storeAccountToUserDefault:acc];
    [[AppDelegate sharedInstance] setupSideMenu];
    
}
@end
