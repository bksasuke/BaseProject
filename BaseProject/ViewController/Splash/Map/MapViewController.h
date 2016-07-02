//
//  MapViewController.h
//  ridesharing
//
//  Created by Tung Dao on 3/28/16.
//  Copyright © 2016 Tung Dao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseVC.h"

@interface MapViewController : BaseVC

@property (nonatomic, retain) NSString *source;
@property (nonatomic, retain) NSString *destination;
@property (nonatomic, retain) NSString *ownerSource;
@property (nonatomic, retain) NSString *ownerDestination;

@end
