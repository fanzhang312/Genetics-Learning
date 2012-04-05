//
//  MasterViewController.h
//  Genetics Learning
//
//  Created by Zhiqi Chen on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
{
    NSMutableArray * list; 
    DetailViewController *_detailViewController;
}

@property (strong, nonatomic) NSMutableArray *list;
@property (strong, nonatomic) DetailViewController *detailViewController;


@end
