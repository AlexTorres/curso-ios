//
//  CUDummyViewController.h
//  NavigationExample
//
//  Created by Alex on 13/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TheProtocol.h"

@interface CUDummyViewController : UIViewController

- (IBAction)dummyTouch:(id)sender;
@property (weak, nonatomic)  id<TheProtocol> delegate;
@end
