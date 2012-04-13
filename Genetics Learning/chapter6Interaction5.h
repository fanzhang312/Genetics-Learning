//
//  chapter6Interaction5.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chapter6Interaction5 : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *frontImage;
@property (weak, nonatomic) IBOutlet UIImageView *backImage;
@property (weak, nonatomic) IBOutlet UITextView *secondText;

@property (strong, nonatomic) IBOutlet UILabel *tempLabel;
@property (strong, nonatomic) IBOutlet UIStepper *tempStepper;
- (IBAction)stepperValueChanged:(id)sender;
@end
