//
//  chapter6Interaction.m
//  Genetics Learning
//
//  Created by Fan Zhang on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chapter6Interaction.h"

@implementation chapter6Interaction
@synthesize backImage;
@synthesize frontImage;
@synthesize tempStepper;
@synthesize tempLabel;

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


    self.tempStepper.minimumValue = 24;
    self.tempStepper.maximumValue = 100;
    self.tempStepper.stepValue = 2;
    self.tempStepper.wraps = YES;
    self.tempStepper.autorepeat = YES;
    self.tempStepper.continuous = YES;
    self.tempLabel.text = [NSString stringWithFormat:@"%.f C", tempStepper.value];
}

- (void)viewDidUnload
{
    [self setTempStepper:nil];
    [self setTempLabel:nil];
    [self setBackImage:nil];
    [self setFrontImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // Temporarily disable the scrollview when drag begins
    ((UIScrollView *)self.view.superview).scrollEnabled = NO;
    [(UIScrollView *)self.view.superview setUserInteractionEnabled:NO];
    self.frontImage.hidden = NO;
    self.backImage.hidden = YES;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)stepperValueChanged:(id)sender {
    double stepperValue = tempStepper.value;
    self.tempLabel.text = [NSString stringWithFormat:@"%.f C", stepperValue];
    if (stepperValue == 94.) {
        self.backImage.hidden = NO;
        self.frontImage.hidden = YES;
//        ((UIScrollView *)self.view.superview).scrollEnabled = YES;
    }
}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    // Temporarily disable the scrollview when drag begins
//    ((UIScrollView *)self.view.superview).scrollEnabled=NO;
//    NSLog(@"Touch");
//}   

@end
