//
//  CUDetailViewController.m
//  NavigationExample
//
//  Created by Alex on 13/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "CUDetailViewController.h"

@interface CUDetailViewController ()

@end

@implementation CUDetailViewController


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
    NSLog(@"tile %@",self.title);
    cityLabel.text = self.cityText;
    
    UIStoryboard *storyBoard  = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    dummy =  [storyBoard instantiateViewControllerWithIdentifier:@"dummyViewController"];
    [self.view addSubview:dummy.view];
    
   dummy.view.frame = CGRectMake(dummy.view.frame.origin.x,
                                  dummy.view.frame.origin.y - 20,
                                  dummy.view.frame.size.width, 
                                  dummy.view.frame.size.height - 300);
    dummy.delegate = self;
    
    [dummy dummyTouch:self];
    
	// Do any additional setup after loading the view.
}
- (void) pressDummyButton
{
     cityLabel.text = @"precione el botton";
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
