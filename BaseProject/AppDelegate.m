//
//  AppDelegate.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "AppDelegate.h"
#import "MFSideMenu.h"
#import "HomeVC.h"
#import "LeftMenuViewController.h"
@interface AppDelegate ()<SWRevealViewControllerDelegate>

@end

@implementation AppDelegate
@synthesize viewController = _viewController;

#pragma mark - SharedInstance

+ (AppDelegate *)sharedInstance
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    _storyboard = [Utils mainStoryboard];
    _window.rootViewController = [_storyboard instantiateInitialViewController];
    
    return YES;
}
- (void)setupSideMenu
{
    UINavigationController *nav = (UINavigationController *)[ self viewControllerWithIndentifier:@"NavHome"];
  
    self.window.rootViewController = [self viewControllerWithIndentifier:@"MFSideMenuContainerViewController"];
    self.container = (MFSideMenuContainerViewController *)self.window.rootViewController;
    HomeVC *homeVC = (HomeVC*) [self viewControllerWithIndentifier:@"HomeVC"];
                [nav setViewControllers:[NSArray arrayWithObject:homeVC] animated:YES];
    //            [_appDelegate changeRootViewController:nav];
    UIViewController *leftSideMenuViewController = [self viewControllerWithIndentifier:@"LeftMenuViewController"];
    [self.container setLeftMenuViewController:leftSideMenuViewController];
    [self.container setCenterViewController:nav];
    [self.container setRightMenuViewController:nil];
    
}
- (void ) otherMenu {
    //    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //    self.window = window;
    //
    //    LeftMenuViewController *leftVC = [LeftMenuViewController new];
    //    MFSideMenuContainerViewController *container = [MFSideMenuContainerViewController
    //                                                    containerWithCenterViewController: [self nav]
    //                                                    leftMenuViewController:leftVC
    //                                                    rightMenuViewController:nil];
    //    self.window.rootViewController = container;
    //    [self.window makeKeyAndVisible];
    //    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //    self.window = window;
    
    HomeVC *frontViewController = [[HomeVC alloc] init];
    LeftMenuViewController *rearViewController = [[LeftMenuViewController alloc] init];
    
    UINavigationController *frontNavigationController = [[UINavigationController alloc] initWithRootViewController:frontViewController];
    UINavigationController *rearNavigationController = [[UINavigationController alloc] initWithRootViewController:rearViewController];
    
    SWRevealViewController *mainRevealController = [[SWRevealViewController alloc]
                                                    initWithRearViewController:rearNavigationController frontViewController:frontNavigationController];
    
    mainRevealController.delegate = self;
    self.viewController = mainRevealController;
    self.window.rootViewController = mainRevealController;
    
}

#pragma mark - ViewController

- (UIViewController *)viewControllerWithIndentifier:(NSString *)identifier
{
    return [_storyboard instantiateViewControllerWithIdentifier:identifier];
}

- (void)changeRootViewController:(UINavigationController *)nav
{
    self.window.rootViewController = nav;
}

- (UIViewController*)topMostController
{
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}

@end
