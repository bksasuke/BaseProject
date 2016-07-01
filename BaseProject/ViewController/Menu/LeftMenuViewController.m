//
//  LeftMenuViewController.m
//  hidezo
//
//  Created by Tung Dao on 9/7/15.
//  Copyright (c) 2015 Tung Dao. All rights reserved.
//

#import "LeftMenuViewController.h"
//#import "Utils.h"
//#import "HomeViewController.h"
//#import "ProfileViewController.h"
//#import "NorinaAccount.h"
//#import "SubmitTripViewController.h"
#import "MenuCell.h"
#import "AppController.h"
#import "AppDelegate.h"
#import "UIImageView+AFNetworking.h"

@interface LeftMenuViewController ()
{
    NSMutableArray *_menuList;
}

@end

@implementation LeftMenuViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"LeftMenuConfig" ofType:@"plist"];
    _menuList = [NSMutableArray arrayWithContentsOfFile:path];
    [_menuTableView reloadData];
    [self reload];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reload) name:@"AvatarMenu" object:nil];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
   
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)reload
{
  
}

- (void)setAvatar:(NSString *) strURLImage {
    
}


#pragma mark - UITableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_menuList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MenuCell *cell = (MenuCell *)[tableView dequeueReusableCellWithIdentifier:@"MenuCellReuse"];
    NSDictionary *menuItem = [_menuList objectAtIndex:indexPath.row];
    [cell configCellWithDict:menuItem];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *menuItem = [_menuList objectAtIndex:indexPath.row];
    
    NSInteger index = [[menuItem valueForKey:@"index"] integerValue];
    
    if (_delegate && [_delegate respondsToSelector:@selector(didSelectedMenuAtIndex:)] && index != MenuTypeSignout) {
        [_delegate didSelectedMenuAtIndex:index];
    }
    else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"logout_message", nil)
                                                            message:nil
                                                           delegate:self
                                                  cancelButtonTitle:NSLocalizedString(@"no", nil)
                                                  otherButtonTitles:NSLocalizedString(@"yes", nil), nil];
            [alert show];

    }

    [_menuTableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != 0)
    {
        [_delegate didSelectedMenuAtIndex:MenuTypeSignout];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
