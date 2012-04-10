//
//  chapter5Drag.m
//  Genetics Learning
//
//  Created by Fan Zhang on 4/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chapter5Drag.h"

@implementation chapter5Drag
@synthesize leftback1;
@synthesize leftfront1;
@synthesize rightfront1;
@synthesize redcircle;

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
    //[(UIScrollView *)self.view.superview setUserInteractionEnabled:NO];
}

- (void)viewDidUnload
{
    [self setLeftback1:nil];
    [self setLeftfront1:nil];
    [self setRightfront1:nil];
    [self setRedcircle:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.leftfront1.hidden = NO;
    self.leftback1.hidden = YES;
    self.rightfront1.hidden = NO;
    //self.rightfront1.center = CGPointMake(570, 346);
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
        if (CGRectContainsPoint([self.rightfront1 frame], [touch locationInView:self.view])) {         
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:0.15];
            self.rightfront1.transform = CGAffineTransformMakeScale(1.6, 1.6);
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
        
        if (CGRectContainsPoint([self.rightfront1 frame], [touch locationInView:self.view]))
        {
            self.rightfront1.center = [touch locationInView:self.view];
            self.redcircle.hidden = NO;
        }
        if (CGRectContainsPoint([self.redcircle frame], [touch locationInView:self.view])) {
            self.leftfront1.hidden = YES;
            self.leftback1.hidden = NO;
            self.redcircle.hidden = YES;
            self.rightfront1.hidden = YES;
        }
    }

}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Enable the scrollview when drag finish
    ((UIScrollView *)self.view.superview).scrollEnabled=YES;
    NSLog(@"ended");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.15];
    self.rightfront1.transform = CGAffineTransformIdentity;
    [UIView commitAnimations];
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"cancelled");
    ((UIScrollView *)self.view.superview).scrollEnabled=YES;
    self.rightfront1.transform = CGAffineTransformIdentity;

}

@end
