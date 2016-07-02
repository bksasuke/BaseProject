//
//  HomeVC.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "HomeVC.h"
#import "NSString+MD5.h"
@interface HomeVC () {
    NSString *token;
}
//@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraitHeightOfContentView;


@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    if(!self.title) self.title = @"Demo!";
    [self addLeftMenuButton];
    [self getData];
    [self expandTable];
    
}

- (void )expandTable {
//    CGRect rect = CGRectMake(10, _tableView.frame.origin.y + _tableView.frame.size.height/2, self.view.frame.size.width - 20, 30);
    self.constraitHeightOfContentView.constant = self.view.frame.size.height;
}

- (void )encodeMD5 {
    NSString *key1 = @"Y3VuZ2JvY2Fw" ;
    NSString *key2 = @"PZvCeppruwwbhRX4XlBGteOLqeQ=";
//    int time = TimeStamp;
    NSString *key3 = @"123456";//[NSString stringWithFormat:@"%.0f",time];
    
    NSString *myString = [NSString stringWithFormat:@"%@%@%@",key1,key2,key3];
    NSString *md5 = [myString MD5String];
    token =md5;
    
}
- (void )getData {
    [self encodeMD5];
    
    NSString *deviceID = [[NSUserDefaults standardUserDefaults] objectForKey:@"deviceID"];
    NSString *textContent = @"New note";
    NSString *noteDataString = [NSString stringWithFormat:@"deviceId=%@&textContent=%@", deviceID, textContent];
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfiguration.HTTPAdditionalHeaders = @{
                                                   @"token": @"6116938a786b0a2cd9fbc0c38db8e8bc",
                                                   @"time" : @"1466669524",
                                                   @"type" : @"hot",
                                                   @"cate" : @5,
                                                   @"city": @1,
                                                   @"sort": @"rate",
                                                   @"record": @10,
                                                   @"page":@0
                                                   };
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration];
    NSURL *url = [NSURL URLWithString:@"http://huynhdn.api.foody.vn/restaurant"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^( NSData *data, NSURLResponse *response, NSError *error) {
        NSLog(@"%@",data);
        // The server answers with an error because it doesn't receive the params
    }];
    [postDataTask resume];
}

#pragma mark - TableView delegate 
#pragma mark - UITableView Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}
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


@end
