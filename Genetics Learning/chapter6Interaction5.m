//
//  chapter6Interaction5.m
//  Genetics Learning
//
//  Created by Fan Zhang on 4/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chapter6Interaction5.h"

@implementation chapter6Interaction5
@synthesize frontImage;
@synthesize backImage;
@synthesize secondText;
@synthesize tempLabel;
@synthesize tempStepper;

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
    self.tempStepper.value = 94;
    self.tempStepper.minimumValue = 24;
    self.tempStepper.maximumValue = 100;
    self.tempStepper.stepValue = 1;
    self.tempStepper.wraps = YES;
    self.tempStepper.autorepeat = YES;
    self.tempStepper.continuous = YES;
    self.tempLabel.text = [NSString stringWithFormat:@"%.f C", tempStepper.value];
}

- (void)viewDidUnload
{
    [self setFrontImage:nil];
    [self setBackImage:nil];
    [self setSecondText:nil];
    [self setTempLabel:nil];
    [self setTempStepper:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.frontImage.hidden = NO;
    self.backImage.hidden = YES;
    self.secondText.hidden = YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)stepperValueChanged:(id)sender {
    double stepperValue = tempStepper.value;
    self.tempLabel.text = [NSString stringWithFormat:@"%.f C", stepperValue];
    if (stepperValue == 55.) {
        self.backImage.hidden = NO;
        self.frontImage.hidden = YES;
        self.secondText.hidden = NO;
        //        ((UIScrollView *)self.view.superview).scrollEnabled = YES;
    }
}

@end
