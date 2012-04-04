//
//  StaticViewController.h
//  Genetics Learning
//
//  Created by Fan Zhang on 4/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StaticViewController : UIViewController
{
    UILabel *pageNumberLabel;
    int pageNumber;
    
    UILabel *numberTitle;
    UIImageView *numberImage;
    UITextView *numberContent;
}

@property (strong, nonatomic) IBOutlet UILabel *pageNumberLabel;

@property (strong, nonatomic) IBOutlet UILabel *numberTitle;
@property (strong, nonatomic) IBOutlet UIImageView *numberImage;
@property (strong, nonatomic) IBOutlet UITextView *numberContent;

- (id) initWithPageNumber:(int)page;
@end
