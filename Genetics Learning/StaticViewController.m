//
//  StaticViewController.m
//  Genetics Learning
//
//  Created by Fan Zhang on 4/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StaticViewController.h"

@implementation StaticViewController

@synthesize pageNumberLabel;
@synthesize numberTitle;
@synthesize numberImage;
@synthesize numberContent;


- (id)initWithPageNumber:(int)page
{
    if (self = [super initWithNibName:@"StaticViewController" bundle:nil]) {
        pageNumber = page;
    }
    return self;
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    pageNumberLabel.text = [NSString stringWithFormat:@"Page %d", pageNumber + 1];
}

- (void)viewDidUnload
{
    [self setNumberTitle:nil];
    [self setNumberImage:nil];
    [self setNumberContent:nil];
    [self setPageNumberLabel:nil];

    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
