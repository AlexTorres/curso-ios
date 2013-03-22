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
#import "EXAnotation.h"
#import <CoreLocation/CoreLocation.h>



@interface CUDetailViewController : UIViewController<TheProtocol,CLLocationManagerDelegate>
{
    CUDummyViewController * dummy; 
    IBOutlet UILabel *cityLabel;
    IBOutlet MKMapView *myMap;
    CLLocationManager * locationManager;
    
}
@property (strong, nonatomic) NSString * cityText;


@end
