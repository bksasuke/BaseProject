//
//  LeftMenuViewController.h
//  BaseProject
//
//  Created by suke on 7/2/16.
//  Copyright © 2016 suke. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseVC.h"

@interface LeftMenuViewController :UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) IBOutlet UITableView *rearTableView;

@end
