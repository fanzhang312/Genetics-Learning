//
//  StaticView6Controller.m
//  Genetics Learning
//
//  Created by Zhiqi Chen on 4/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StaticView6Controller.h"

@implementation StaticView6Controller

@synthesize numberTitle;
@synthesize numberContent;
@synthesize numberImage;
@synthesize pageNumberLabel;

- (id)initWithPageNumber:(int)page
{
    if (self = [super initWithNibName:@"StaticView6Controller" bundle:nil]) {
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
    pageNumberLabel.text = [NSString stringWithFormat:@"Page %d", pageNumber + 1];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setNumberTitle:nil];
    [self setNumberContent:nil];
    [self setNumberImage:nil];
    [self setPageNumberLabel:nil];
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
