//
//  chapter5Drag5.m
//  Genetics Learning
//
//  Created by Fan Zhang on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chapter5Drag5.h"

@implementation chapter5Drag5
@synthesize leftback;
@synthesize leftfront;
@synthesize rightfront;
@synthesize redcircle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.leftfront.hidden = NO;
    self.leftback.hidden = YES;
    self.rightfront.hidden = NO;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
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
}

- (void)viewDidUnload
{
    [self setLeftback:nil];
    [self setLeftfront:nil];
    [self setRightfront:nil];
    [self setRedcircle:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Temporarily disable the scrollview when drag begins
    ((UIScrollView *)self.view.superview).scrollEnabled=NO;
    
    for (UITouch *touch in touches) {
        if (CGRectContainsPoint([self.rightfront frame], [touch locationInView:self.view])) {         
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.25];
            self.rightfront.transform = CGAffineTransformMakeScale(1.8, 1.8);
            [UIView commitAnimations];
            NSLog(@"touches begin:\n");
            
        }
    }
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Still disable the scrollview when drag moves
    ((UIScrollView *)self.view.superview).scrollEnabled=NO;
    for (UITouch *touch in touches)
    {
        
        if (CGRectContainsPoint([self.rightfront frame], [touch locationInView:self.view]))
        {
            self.rightfront.center = [touch locationInView:self.view];
            self.redcircle.hidden = NO;
        }
        if (CGRectContainsPoint([self.redcircle frame], [touch locationInView:self.view])) {
            self.leftfront.hidden = YES;
            self.leftback.hidden = NO;
            self.redcircle.hidden = YES;
            self.rightfront.hidden = YES;
        }
    }
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Enable the scrollview when drag finish
    ((UIScrollView *)self.view.superview).scrollEnabled=YES;
    NSLog(@"ended");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.25];
    self.rightfront.transform = CGAffineTransformIdentity;
    [UIView commitAnimations];
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"cancelled");
    ((UIScrollView *)self.view.superview).scrollEnabled=YES;
    self.rightfront.transform = CGAffineTransformIdentity;
    
}

@end
