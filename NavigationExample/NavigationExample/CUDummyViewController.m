//
//  CUDummyViewController.m
//  NavigationExample
//
//  Created by Alex on 13/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "CUDummyViewController.h"

@interface CUDummyViewController ()

@end

@implementation CUDummyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dummyTouch:(id)sender {
    
    /*if([self.delegate respondsToSelector:@selector(pressDummyButton)])
    {
       [self.delegate performSelector:@selector(pressDummyButton)];
    
    
    }*/
    //[self.delegate returnViewColor:self.view.backgroundColor ];
    self.view.backgroundColor = [self.delegate chageColorView:self.view];

}
- (IBAction)sendNotification:(id)sender {
    [[NSNotificationCenter defaultCenter] 
     postNotificationName:@"myNotification" 
     object:self];
}
@end
