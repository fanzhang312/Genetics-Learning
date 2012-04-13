//
//  chapter6Interaction2.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chapter6Interaction2 : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *leftfront;
@property (weak, nonatomic) IBOutlet UIImageView *leftback;
@property (weak, nonatomic) IBOutlet UIImageView *rightfront;
@property (weak, nonatomic) IBOutlet UIImageView *redcircle;
@property (weak, nonatomic) IBOutlet UIImageView *rightback;

- (IBAction)stepperValueChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UIStepper *tempStepper;
@property (strong, nonatomic) IBOutlet UILabel *tempLabel;

@end
