//
//  AppDelegate.h
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDRTranslucentSideBar.h"
#import "LeftMenuViewController.h"
#import "SWRevealViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SWRevealViewController *viewController;
@property (nonatomic, strong) UIStoryboard *storyboard;
@property (nonatomic, strong) CDRTranslucentSideBar *leftSideBar;
@property (nonatomic, strong) LeftMenuViewController *leftMenu;

+ (AppDelegate *)sharedInstance;
- (UIViewController *)viewControllerWithIndentifier:(NSString *)identifier;
- (void)changeRootViewController:(UINavigationController *)nav;
- (void)setupSideMenu;
- (void)otherMenu;

@end

