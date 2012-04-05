//
//  DetailViewController.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//

#import <UIKit/UIKit.h>

//#import "ContentController.h"

@interface DetailViewController : UIViewController <UIScrollViewDelegate>
{
    UIScrollView *scrollView;
    UIPageControl *pageControl;
    NSMutableArray *viewControllers;
    
    BOOL pageControlUsed;
    
    NSArray *contentList;
}


@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;

@property (nonatomic, retain) NSMutableArray *viewControllers;

@property (nonatomic, retain) NSArray *contentList;

- (IBAction)changePage:(id)sender;

- (void)loadScrollViewWithPage:(int)page;
- (void)scrollViewDidScroll:(UIScrollView *)sender;

@end
