//
//  chapter6Interaction3.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chapter6Interaction3 : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *leftfront;
@property (weak, nonatomic) IBOutlet UIImageView *leftback;
@property (weak, nonatomic) IBOutlet UIImageView *rightback;
@property (weak, nonatomic) IBOutlet UIImageView *rightfront;
@property (weak, nonatomic) IBOutlet UIImageView *redcircle;

@property (strong, nonatomic) IBOutlet UIStepper *tempStepper;
@property (strong, nonatomic) IBOutlet UILabel *tempLabel;
- (IBAction)stepperValueChanged:(id)sender;

@end
