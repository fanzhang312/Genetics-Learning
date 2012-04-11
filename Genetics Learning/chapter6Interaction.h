//
//  chapter6Interaction.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface chapter6Interaction : UIViewController

@property (strong, nonatomic) IBOutlet UIStepper *tempStepper;
@property (strong, nonatomic) IBOutlet UILabel *tempLabel;

- (IBAction)stepperValueChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *backImage;
@property (weak, nonatomic) IBOutlet UIImageView *frontImage;
@end
