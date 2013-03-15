//
//  CUDetailViewController.h
//  NavigationExample
//
//  Created by Alex on 13/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CUDummyViewController.h"

@interface CUDetailViewController : UIViewController<TheProtocol>
{
    CUDummyViewController * dummy; 
    IBOutlet UILabel *cityLabel;
}
@property (strong, nonatomic) NSString * cityText;


@end
