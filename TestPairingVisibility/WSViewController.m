//
//  WSViewController.m
//  TestPairingVisibility
//
//  Created by Justin Middleton on 8/25/13.
//  Copyright (c) 2013 Whistle. All rights reserved.
//

#import "WSViewController.h"
#import <ExternalAccessory/ExternalAccessory.h>

@interface WSViewController ()

@end

@implementation WSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pairTapped:(id)sender {
    [[EAAccessoryManager sharedAccessoryManager] showBluetoothAccessoryPickerWithNameFilter:nil
                                                                                 completion:^(NSError *error) {
            if (error) {
                NSLog(@"Exited pairing mode with error: %@", [error localizedDescription]);
            } else {
                NSLog(@"Exited pairing mode.");
            }
    }];
}

@end
