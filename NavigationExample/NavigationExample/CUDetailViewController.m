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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
