//
//  CUViewController.h
//  NavigationExample
//
//  Created by Alex on 11/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CUDetailViewController.h"

@interface CUViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView * mytable;
    NSArray  * tableArray;
}

@end
