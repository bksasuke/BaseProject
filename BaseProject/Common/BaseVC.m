//
//  BaseVC.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "BaseVC.h"

@interface BaseVC ()

@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _appController = [AppController sharedInstance];
    _appDelegate = [AppDelegate sharedInstance];
    self.navigationController.navigationBar.translucent = NO;
}

- (void)addLeftMenuButton
{
    UIButton *leftMenuButton = [[UIButton alloc] init];
    UIImage *image = [UIImage imageNamed:@"Menu"];
    leftMenuButton.frame = CGRectMake(0.0, 0.0, image.size.width, image.size.height);
    [leftMenuButton setBackgroundImage:image forState:UIControlStateNormal];
    [leftMenuButton addTarget:self action:@selector(onShowLeftMenuAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftMenuButton];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    self.navigationItem.hidesBackButton = YES;
}
- (void)onShowLeftMenuAction
{
      [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}

@end
