//
//  ViewController.m
//  TestWifi
//
//  Created by user on 8/1/16.
//  Copyright © 2016 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int signalStrength;
    
    // Do any additional setup after loading the view, typically from a nib.
    
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *subviews = [[[app valueForKey:@"statusBar"] valueForKey:@"foregroundView"] subviews];
    NSString *dataNetworkItemView = nil;
    
    for (id subview in subviews) {
        if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarDataNetworkItemView") class]]) {
            dataNetworkItemView = subview;
            break;
        }
    }
    
    while (true) {
        signalStrength = [[dataNetworkItemView valueForKey:@"wifiStrengthBars"] intValue];
     
        //[_lblSignal setText:[NSString stringWithFormat:@"signal: %@%d\r",_lblSignal.text,signalStrength]];
        
    
                
        NSLog(@"signal %d", signalStrength);
        sleep(2);
        
 
    }
    
    
    
    
    /*
     UIApplication *app = [UIApplication sharedApplication];
     NSArray *subviews = [[[app valueForKey:@"statusBar"]     valueForKey:@"foregroundView"] subviews];
     NSString *dataNetworkItemView = nil;
     for (id subview in subviews) {
         if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarSignalStrengthItemView") class]])
         {
            dataNetworkItemView = subview;
            break;
         }
     }
     int signalStrength = [[dataNetworkItemView valueForKey:@"signalStrengthRaw"] intValue];
     NSLog(@"signal %d", signalStrength);
        */

    
    /*
     while (true) {
     NSLog(@"signal %d\n", CTGetSignalStrength());
     sleep(5);
     }
     */
    
    
    /*
    NSString *status = CTSIMSupportGetSIMStatus();
    int signalstrength = CTGetSignalStrength();
    BOOL connected = ( [status isEqualToString: @"kCTSIMSupportSIMStatusReady"] && signalstrength > 0 );
    
    NSLog(@"status %@\n", status);
    NSLog(@"signalstrength %d\n", signalstrength);
    NSLog(@"connected %@\n", connected);
    
    */
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
