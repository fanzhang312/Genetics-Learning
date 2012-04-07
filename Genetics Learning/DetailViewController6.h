//
//  DetailViewController6.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController6 : UIViewController <UIScrollViewDelegate>
{
    UIScrollView *scrollView;
    UIPageControl *pageControl;
    NSMutableArray *viewControllers;
    
    BOOL pageControlUsed;
    
    NSArray *contentList;
}


@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@property (nonatomic, retain) NSMutableArray *viewControllers;

@property (nonatomic, retain) NSArray *contentList;


- (IBAction)changePage:(id)sender;
- (void)loadScrollViewWithPage:(int)page;
- (void)scrollViewDidScroll:(UIScrollView *)sender;

@end
