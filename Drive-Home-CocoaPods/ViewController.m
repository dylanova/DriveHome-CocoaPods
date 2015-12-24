//
//  ViewController.m
//  Drive-Home-CocoaPods
//
//  Created by Dylan Porter on 12/23/15.
//  Copyright © 2015 Dylan Porter. All rights reserved.
//

#import "ViewController.h"
@import GoogleMaps;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // coordinate: -33.86, 151.20 at zoom level 6
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:30.2861
                                                            longitude:-97.7394
                                                                 zoom:10.9];
    GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    mapView.trafficEnabled = YES;
    
    // Show Jollyville marker
    GMSMarker *work_marker = [[GMSMarker alloc] init];
    work_marker.position = jollyville;
    work_marker.snippet = @"Jollyville";
    work_marker.appearAnimation = kGMSMarkerAnimationPop;
    work_marker.map = mapView;
    
    // Show home marker
    GMSMarker *home_marker = [[GMSMarker alloc] init];
    home_marker.position = pville_home;
    home_marker.snippet = @"Home";
    home_marker.appearAnimation = kGMSMarkerAnimationPop;
    home_marker.map = mapView;
    
    self.view = mapView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
