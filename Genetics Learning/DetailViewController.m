//
//  DetailViewController.m
//  Genetics Learning
//
//  Created by Fan Zhang on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "StaticViewController.h"
#import "chapter5Drag.h"
#import "chapter5Drag2.h"
#import "chapter5Drag3.h"
#import "chapter5Drag4.h"
#import "chapter5Drag5.h"
#import "chapter5Drag6.h"
#import "chapter5Drag7.h"
#import "chapter5Drag8.h"
#import "chapter5Drag9.h"
#import "chapter5Question.h"

static NSUInteger kNumberOfPages = 31;
static NSString *tittleKey = @"tittleKey";
static NSString *imageKey = @"imageKey";
static NSString *contentKey = @"contentKey";


@implementation DetailViewController

@synthesize scrollView;
@synthesize pageControl;
@synthesize viewControllers;

@synthesize contentList;


- (void)viewDidLoad
{
	// load our data from a plist file inside our app bundle
    NSString *path = [[NSBundle mainBundle] pathForResource:@"chapter5" ofType:@"plist"];
    self.contentList = [NSArray arrayWithContentsOfFile:path];
    
    // view controllers are created lazily
    // in the meantime, load the array with placeholders which will be replaced on demand
    
    NSMutableArray *controllers = [[NSMutableArray alloc] init];
    for (unsigned i = 0; i < kNumberOfPages; i++)
    {
		[controllers addObject:[NSNull null]];
    }
    self.viewControllers = controllers;
    
    
    // a page is the width of the scroll view
    scrollView.pagingEnabled = YES;
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * kNumberOfPages, scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = NO;
    scrollView.directionalLockEnabled = YES;
    scrollView.delegate = self;
    //scrollView.userInteractionEnabled = YES;
    
    pageControl.numberOfPages = kNumberOfPages;
    pageControl.currentPage = 0;
    
    // pages are created on demand
    // load the visible page
    // load the page on either side to avoid flashes when the user starts scrolling
    //
    [self loadScrollViewWithPage:0];
    [self loadScrollViewWithPage:1];
}

- (void)loadScrollViewWithPage:(int)page
{
    if (page < 0)
        return;
    if (page >= kNumberOfPages)
        return;
    
    // warning: Danger FIX
    UIViewController *viewController = [self.viewControllers objectAtIndex:page];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        [viewController.view removeFromSuperview];
    }
    
    switch (page) {
        case 4:{
            chapter5Drag *controller = nil;
            controller = [[chapter5Drag alloc] initWithNibName:@"chapter5Drag" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 5:{
            chapter5Drag2 *controller = nil;
            controller = [[chapter5Drag2 alloc] initWithNibName:@"chapter5Drag2" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 7:{
            chapter5Drag3 *controller = nil;
            controller = [[chapter5Drag3 alloc] initWithNibName:@"chapter5Drag3" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 9:{
            chapter5Drag4 *controller = nil;
            controller = [[chapter5Drag4 alloc] initWithNibName:@"chapter5Drag4" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 11:{
            chapter5Drag5 *controller = nil;
            controller = [[chapter5Drag5 alloc] initWithNibName:@"chapter5Drag5" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 21:{
            chapter5Drag6 *controller = nil;
            controller = [[chapter5Drag6 alloc] initWithNibName:@"chapter5Drag6" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 22:{
            chapter5Drag7 *controller = nil;
            controller = [[chapter5Drag7 alloc] initWithNibName:@"chapter5Drag7" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 24:{
            chapter5Drag8 *controller = nil;
            controller = [[chapter5Drag8 alloc] initWithNibName:@"chapter5Drag8" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
        case 26:{
            chapter5Drag9 *controller = nil;
            controller = [[chapter5Drag9 alloc] initWithNibName:@"chapter5Drag9" bundle:nil];
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
            
        case 30:{
            chapter5Question *controller = nil;
            controller = [[chapter5Question alloc] initWithNibName:@"chapter5Question" bundle:nil];
            
            
            [viewControllers replaceObjectAtIndex:page withObject:controller];
            controller.view.userInteractionEnabled = YES;
            
            // add the controller's view to the scroll view
            CGRect frame = scrollView.frame;
            frame.origin.x = frame.size.width * page;
            frame.origin.y = 0;
            controller.view.frame = frame;
            [scrollView addSubview:controller.view];   
        }break;
            
        default:{
            // replace the placeholder if necessary
            StaticViewController *controller = [viewControllers objectAtIndex:page];
            if ((NSNull *)controller == [NSNull null])
            {
                controller = [[StaticViewController alloc] initWithPageNumber:page];
                [viewControllers replaceObjectAtIndex:page withObject:controller];
                controller.view.userInteractionEnabled = YES;
                
            }
            
            // add the controller's view to the scroll view
            if (controller.view.superview == nil)
            {
                CGRect frame = scrollView.frame;
                frame.origin.x = frame.size.width * page;
                frame.origin.y = 0;
                controller.view.frame = frame;
                [scrollView addSubview:controller.view];   
                
                
                NSDictionary *numberItem = [self.contentList objectAtIndex:page];
                controller.numberImage.image = [UIImage imageNamed:[numberItem valueForKey:imageKey]];
                controller.numberTitle.text = [numberItem valueForKey:tittleKey];
                controller.numberContent.text = [numberItem valueForKey:contentKey];
                
                NSLog(@"page %d",page);
            }

        }
            break;
    }
        
           
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    if (pageControlUsed)
    {
        // do nothing - the scroll was initiated from the page control, not the user dragging
        return;
    }
	
    // Switch the indicator when more than 50% of the previous/next page is visible
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    pageControl.currentPage = page;
    
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
//    [self.viewControllers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//        if (idx != page -1 && idx != page && idx != page +1) {
//            [self.viewControllers replaceObjectAtIndex:idx withObject:[NSNull null]];
//        }
//    }];
    
    for (int i = 0; i < [self.viewControllers count]; i++) {
        if (i != page -1 && i != page && i != page +1) {
            UIViewController *dummyChapter = [self.viewControllers objectAtIndex:i];
            if ([dummyChapter isKindOfClass:[UIViewController class]]) {
                [dummyChapter.view removeFromSuperview];
            }
            [self.viewControllers replaceObjectAtIndex:i withObject:[NSNull null]];
        }
    }
}

// At the begin of scroll dragging, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    pageControlUsed = NO;
}

// At the end of scroll animation, reset the boolean used when scrolls originate from the UIPageControl
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    pageControlUsed = NO;
}

- (IBAction)changePage:(id)sender
{
    int page = pageControl.currentPage;
	
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
    [self loadScrollViewWithPage:page - 1];
    [self loadScrollViewWithPage:page];
    [self loadScrollViewWithPage:page + 1];
    
	// update the scroll view to the appropriate page
    CGRect frame = scrollView.frame;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    [scrollView scrollRectToVisible:frame animated:YES];
    
	// Set the boolean used when scrolls originate from the UIPageControl. See scrollViewDidScroll: above.
    pageControlUsed = YES;
    
    for (int i = 0; i < [self.viewControllers count]; i++) {
        if (i != page -1 && i != page && i != page +1) {
            UIViewController *dummyChapter = [self.viewControllers objectAtIndex:i];
            if ([dummyChapter isKindOfClass:[UIViewController class]]) {
                [dummyChapter.view removeFromSuperview];
            }
            [self.viewControllers replaceObjectAtIndex:i withObject:[NSNull null]];
        }
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    NSLog(@"called view did load");
//    
//    // Do any additional setup after loading the view from its nib.
//}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [self setPageControl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return NO;
}


@end
