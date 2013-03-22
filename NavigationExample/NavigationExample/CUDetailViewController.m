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
    CLLocationCoordinate2D centerCoord;
    centerCoord.latitude = 40.7142;
    centerCoord.longitude = -74.0064;
    EXAnotation * anotation = [[EXAnotation alloc] init];
    anotation.latitude = [NSNumber numberWithFloat:centerCoord.latitude];
    anotation.longitude = [NSNumber numberWithFloat:centerCoord.longitude];
    anotation.titleAnotation = self.cityText;
    [myMap addAnnotation:anotation];
    
    
    MKCoordinateRegion region  = MKCoordinateRegionMakeWithDistance(centerCoord, 
                                                             1000, 
                                                             100);
    [myMap setRegion:region animated:YES];
    
  //  CLRegion = C
    
    
    
   /* UIStoryboard *storyBoard  = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    dummy =  [storyBoard instantiateViewControllerWithIdentifier:@"dummyViewController"];
    [self.view addSubview:dummy.view];
    
   dummy.view.frame = CGRectMake(dummy.view.frame.origin.x,
                                  dummy.view.frame.origin.y - 20,
                                  dummy.view.frame.size.width, 
                                  dummy.view.frame.size.height - 300);
    dummy.delegate = self;
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(notiSelector) 
                                                 name:@"myNotification" 
                                               object:nil];
    //[dummy dummyTouch:self];*/
    
	// Do any additional setup after loading the view.
}
/*- (void) pressDummyButton
{
     cityLabel.text = @"precione el botton";
    
}*/
/*- (void) notiSelector
{
    //[UIView animateWithDuration:0.5 animations:];
    
    [UIView animateWithDuration:0.5 
                          delay:0 
                        options:UIViewAnimationOptionCurveEaseIn 
                     animations:^{
                         //self.view.alpha=0;
                         self.view.transform = CGAffineTransformMakeTranslation(0, 150);
                         self.view.transform = CGAffineTransformMakeRotation(M_PI/2);
                     } 
                     completion:^(BOOL finish){     [[NSNotificationCenter defaultCenter] removeObserver:self];}];
    
}
-(UIColor *)chageColorView:(UIView *)view
{
    return [UIColor blueColor];

}*/

- (IBAction)locateMe:(id)sender {
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    [locationManager startUpdatingLocation];
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations objectAtIndex:0];
    cityLabel.text = [NSString stringWithFormat:@"Latitud :%f \nlongitud :%f \naltitud:%f",
                      location.coordinate.latitude,
                      location.coordinate.longitude,
                      location.altitude];
    // TODO: esto puede ir en una funcion mas bonita!!!
    CLLocationCoordinate2D centerCoord;
    centerCoord.latitude = location.coordinate.latitude;
    centerCoord.longitude = location.coordinate.longitude;
    EXAnotation * anotation = [[EXAnotation alloc] init];
    anotation.latitude = [NSNumber numberWithFloat:centerCoord.latitude];
    anotation.longitude = [NSNumber numberWithFloat:centerCoord.longitude];
    anotation.titleAnotation = self.cityText;
    [myMap addAnnotation:anotation];
    
    
    MKCoordinateRegion region  = MKCoordinateRegionMakeWithDistance(centerCoord, 
                                                                    1000, 
                                                                    100);
    [myMap setRegion:region animated:YES];
    
    
    [locationManager stopUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc
{
  
}

@end
