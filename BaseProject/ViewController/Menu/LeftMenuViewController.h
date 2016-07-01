//
//  LeftMenuViewController.h
//  hidezo
//
//  Created by Tung Dao on 9/7/15.
//  Copyright (c) 2015 Tung Dao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFSideMenu.h"

typedef enum
{
    MenuTypeHome = 0,
    MenuTypeMessage = 1,
    MenuTypeProfile = 2,
    MenuTypeRouteHistory = 3,
    MenuTypePaymentHistory = 4,
    MenuTypeSetting = 5,
    MenuTypeGuide = 6,
    MenuTypeMail = 7,
    MenuTypeSignout = 8
} MenuType;

@protocol MenuDelegate <NSObject>

- (void)didSelectedMenuAtIndex:(NSInteger)index;

@end

@interface LeftMenuViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITableView *menuTableView;
@property (nonatomic, assign) id<MenuDelegate> delegate;

- (void)reload;

@end
