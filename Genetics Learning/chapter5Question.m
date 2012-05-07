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
    NSArray *answersGroup0 = [NSArray arrayWithObjects:@"1. When DNA replication is semiconservative, the two original DNA strands serve as",@"A. leading and lagging strands",@"B. templates for synthesizing new DNA strands",@"C. leading strand only",@"D. lagging strand only",[NSNumber numberWithInt:2],nil];
    NSArray *answersGroup1 = [NSArray arrayWithObjects:@"2. During DNA replication, the strand that is synthesized continuously is called the",@"A. lagging strand",@"B. leading strand",@"C. template",@"D. primer",[NSNumber numberWithInt:2], nil];
    NSArray *answersGroup2 = [NSArray arrayWithObjects:@"3. Which of the following enzymes is responsible for unwinding the DNA strands during replication?",@"A. helicase",@"B. RNA primase",@"C. DNA ligase",@"D. DNA polyerase",[NSNumber numberWithInt:1],nil];
    NSArray *answersGroup3 = [NSArray arrayWithObjects:@"4. During DNA replication, which of the following is synthesized first?",@"A. Okazaki fragment",@"B. DNA leading strand",@"C. RNA primer",@"D. DNA lagging strand",[NSNumber numberWithInt:3], nil];
    NSArray *answersGroup4 = [NSArray arrayWithObjects:@"5. A replication fork is the junction between",@"A. DNA and RNA primer",@"B. two DNA polymerases",@"C. double stranded and single stranded DNA",@"D. leading and lagging strands",[NSNumber numberWithInt:3],nil];
    NSArray *answersGroup5 = [NSArray arrayWithObjects:@"6. DNA synthesis is always in the following direction:",@"A. 3' to 5'",@"B. 1' to 5'",@"C. 5' to 3'",@"D. 5' to 1'",[NSNumber numberWithInt:3], nil];
    NSArray *answersGroup6 = [NSArray arrayWithObjects:@"7. During initiation of DNA replication, the enzyme that is responsible for synthesizing a shorter piece of RNA using a DNA template is called",@"A. DNA exonuclease",@"B. RNase H",@"C. DNA ligase",@"D. RNA primase",[NSNumber numberWithInt:4],nil];
    NSArray *answersGroup7 = [NSArray arrayWithObjects:@"8. During DNA replication, DNA polymerase movers on the template strand in the following direction",@"A. 4' to 3'",@"B. 2' to 3'",@"C. 3' to 5'",@"D. 5' to 3'",[NSNumber numberWithInt:3], nil];
    NSArray *answersGroup8 = [NSArray arrayWithObjects:@"9.In human cells, each chromosome is packed with a highly coiled linear DNA molecule (a double helix). If the newly synthesized RNA primer at the 5' end go the molecule is removed (by RNase H) after each replication cycle, what happens to the DNA in the chromosome?",@"A. It becomes longer.",@"B. It remains the same length.",@"C. It becomes thicker.",@"D. it becomes shorter.",[NSNumber numberWithInt:4],nil];
    NSArray *answersGroup9 = [NSArray arrayWithObjects:@"10. If human chromosomes become shorter after each round of DNA replication, what happens to the cell that continue to divide?",@"A. They live forever.",@"B. They eventually die.",@"C. They become smaller.",@"D. They become longer.",[NSNumber numberWithInt:2], nil];
    self.allAnswer = [NSArray arrayWithObjects:answersGroup0,answersGroup1,answersGroup2,answersGroup3,answersGroup4,answersGroup5,answersGroup6,answersGroup7,answersGroup8,answersGroup9, nil];
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
	return NO;
}

- (IBAction)nextQuestion:(id)sender {
    if(currentGroupNumber<9){
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

- (IBAction)previousQuestion:(id)sender {
    if(currentGroupNumber>0){
        currentGroupNumber = currentGroupNumber - 1;
        self.answerLabel.text = @"";
        [self loadDataWithArray:self.allAnswer];
    }
}
@end
