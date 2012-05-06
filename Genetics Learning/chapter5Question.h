//
//  chapter5Question.h
//  Genetics Learning
//
//  Created by Fan Zhang on 5/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chapter5Question : UIViewController
{    
    NSArray *allAnswer;
}

@property (strong, nonatomic) NSArray *allAnswer;
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UIButton *question1;
@property (strong, nonatomic) IBOutlet UIButton *question2;
@property (strong, nonatomic) IBOutlet UIButton *question3;
@property (strong, nonatomic) IBOutlet UIButton *question4;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)nextQuestion:(id)sender;
- (IBAction)checkAnswer:(id)sender;

@end
