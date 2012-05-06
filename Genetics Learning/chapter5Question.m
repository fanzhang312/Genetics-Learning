//
//  chapter5Question.m
//  Genetics Learning
//
//  Created by Fan Zhang on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chapter5Question.h"

@implementation chapter5Question
@synthesize questionLabel;
@synthesize question1;
@synthesize question2;
@synthesize question3;
@synthesize question4;
@synthesize answerLabel;
@synthesize allAnswer;
int currentGroupNumber = 0;
int rightAnswer = 1;

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

// set data to the view
-(void)loadDataWithArray:(NSArray *) array
{
    NSArray *tmp = [array objectAtIndex:currentGroupNumber];
    self.questionLabel.text = [tmp objectAtIndex:0];
    [self.question1 setTitle:[tmp objectAtIndex:1] forState:UIControlStateNormal];
    [self.question2 setTitle:[tmp objectAtIndex:2] forState:UIControlStateNormal];
    [self.question3 setTitle:[tmp objectAtIndex:3] forState:UIControlStateNormal];
    [self.question4 setTitle:[tmp objectAtIndex:4] forState:UIControlStateNormal];
    rightAnswer = [[tmp objectAtIndex:5] intValue];
}

// Load all the question data
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSArray *answersGroup0 = [NSArray arrayWithObjects:@"Question0",@"0an1",@"0an2",@"0an3",@"0an4",[NSNumber numberWithInt:1],nil];
    NSArray *answersGroup1 = [NSArray arrayWithObjects:@"Question1",@"1an1",@"1an2",@"1an3",@"1an4",[NSNumber numberWithInt:2], nil];
    NSArray *answersGroup2 = [NSArray arrayWithObjects:@"Question2",@"2an1",@"2an2",@"2an3",@"2an4",[NSNumber numberWithInt:4],nil];
    NSArray *answersGroup3 = [NSArray arrayWithObjects:@"Question3",@"3an1",@"3an2",@"3an3",@"3an4",[NSNumber numberWithInt:3], nil];
    self.allAnswer = [NSArray arrayWithObjects:answersGroup0,answersGroup1,answersGroup2,answersGroup3, nil];
    [self loadDataWithArray:self.allAnswer];
}

- (void)viewDidUnload
{
    [self setQuestionLabel:nil];
    [self setQuestion1:nil];
    [self setQuestion2:nil];
    [self setQuestion3:nil];
    [self setQuestion4:nil];
    [self setAnswerLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)nextQuestion:(id)sender {
    if(currentGroupNumber<3){
        currentGroupNumber = currentGroupNumber + 1;
        self.answerLabel.text = @"";
        [self loadDataWithArray:self.allAnswer];
    }
}

- (IBAction)checkAnswer:(id)sender {
     UIButton *instanceButton = (UIButton*)sender;
    if (instanceButton.tag == rightAnswer) {
        self.answerLabel.text = @"Correct";
    }else
        self.answerLabel.text = @"Incorrect";
}
@end
