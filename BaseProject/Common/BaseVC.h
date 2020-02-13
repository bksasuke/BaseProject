//
//  BaseVC.h
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AppController.h"
#import "MFSideMenu.h"

@interface BaseVC : UIViewController {
    AppController *_appController;
    AppDelegate *_appDelegate;
}

- (void)addLeftMenuButton;
- (void)onShowLeftMenuAction;

@end
