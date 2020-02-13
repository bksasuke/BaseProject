/*
 
 Copyright (c) 2013 Joan Lluch <joan.lluch@sweetwilliamsl.com>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished
 to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 
 */

#import "LeftMenuViewController.h"
#import "SWRevealViewController.h"
#import "HomeVC.h"


@interface LeftMenuViewController ()
{
    NSInteger _presentedRow;
    HomeVC *homeVC;
}
@property (nonatomic, weak) NSString *desLink;
@end

@implementation LeftMenuViewController

@synthesize rearTableView = _rearTableView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    UIViewController *newFrontController = nil;
    homeVC = [[HomeVC alloc] init];
    newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    self.desLink = nil;
    self.navigationItem.title = @"List Chanel";
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    SWRevealViewController *grandParentRevealController = self.revealViewController.revealViewController;
    grandParentRevealController.bounceBackOnOverdraw = NO;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    SWRevealViewController *grandParentRevealController = self.revealViewController.revealViewController;
    grandParentRevealController.bounceBackOnOverdraw = YES;
}


#pragma mark - UITableView Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    NSInteger row = indexPath.row;
    
    if (nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                      reuseIdentifier:cellIdentifier];
    }
    
    NSString *text = nil;
    UIImage *cellImage;
    if (row == 0)
    {
        text = @"Đăng nhập";
        cellImage = [UIImage imageNamed:@"menu_1"];
        
    }
    else if (row == 1)
    {
        text = @"Công thức";
        cellImage = [UIImage imageNamed:@"menu_2"];
    }
    else if (row == 2)
    {
        text = @"Bộ sưu tập";
        cellImage = [UIImage imageNamed:@"menu_3"];
        
    }
    else if (row == 3)
    {
        text = @"Blog nấu ăn";
        cellImage = [UIImage imageNamed:@"menu_4"];
        
    }
    else if (row == 4)
    {
        text = @"Setting";
        cellImage = [UIImage imageNamed:@"menu_5"];
        
    }
    
    cell.textLabel.text = NSLocalizedString( text, nil );
    cell.imageView.image = cellImage;
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    SWRevealViewController *revealController = self.revealViewController;
    
    
    NSInteger row = indexPath.row;
    
    if ( row == _presentedRow )
    {
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        return;
    }
    
    // otherwise we'll create a new HomeVC and push it with animation
    
    UIViewController *newFrontController = nil;
    newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
    if (row == 0) // Tạo các Controller mới tương ứng.
    {
        homeVC = [[HomeVC alloc] init];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    }
    
    else if (row == 1)
    {
        homeVC = [[HomeVC alloc] init];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
       
    }
    else if (row == 2)
    {
       homeVC = [[HomeVC alloc] init];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
        
    }
    else if (row == 3)
    {
       homeVC = [[HomeVC alloc] init];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
        
    }
    
    else if ( row == 4 )
    {
        homeVC = [[HomeVC alloc] init];
        newFrontController = [[UINavigationController alloc] initWithRootViewController:homeVC];
        
    }
    
//    [revealController pushFrontViewController:newFrontController animated:YES];
    
    UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
    NSArray *controllers = [NSArray arrayWithObject:newFrontController];
    navigationController.viewControllers = controllers;
    [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
    _presentedRow = row;  // <- store the presented row
}



@end