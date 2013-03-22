//
//  CUDetailViewController.h
//  NavigationExample
//
//  Created by Alex on 13/03/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CUDummyViewController.h"
#import <MapKit/MapKit.h>
#import <MessageUI/MessageUI.h>
#import "EXAnotation.h"




@interface CUDetailViewController : UIViewController<TheProtocol,MFMailComposeViewControllerDelegate,MFMessageComposeViewControllerDelegate,UINavigationControllerDelegate>
{
    CUDummyViewController * dummy; 
    IBOutlet UILabel *cityLabel;
    IBOutlet MKMapView *myMap;

    
}
@property (strong, nonatomic) NSString * cityText;


@end
