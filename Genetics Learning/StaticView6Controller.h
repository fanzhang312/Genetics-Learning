//
//  StaticView6Controller.h
//  Genetics Learning
//
//  Created by Zhiqi Chen on 4/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StaticView6Controller : UIViewController
{
    UILabel *pageNumberLabel;
    int pageNumber;
    
    UILabel *numberTitle;
    UIImageView *numberImage;
    UITextView *numberContent;
}

@property (strong, nonatomic) IBOutlet UILabel *numberTitle;
@property (strong, nonatomic) IBOutlet UITextView *numberContent;
@property (strong, nonatomic) IBOutlet UIImageView *numberImage;
@property (strong, nonatomic) IBOutlet UILabel *pageNumberLabel;

- (id) initWithPageNumber: (int) page;

@end

