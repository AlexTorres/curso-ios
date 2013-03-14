//
//  CUDetailViewController.h
//  NavigationExample
//
//  Created by Alex on 13/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CUDetailViewController : UIViewController
{
 
    IBOutlet UILabel *cityLabel;
}
@property (strong, nonatomic) NSString *cityText;

@end
