//
//  WSPairingTableViewController.m
//  TestPairingVisibility
//
//  Created by Justin Middleton on 8/25/13.
//  Copyright (c) 2013 Whistle. All rights reserved.
//

#import "WSPairingTableViewController.h"
#import <ExternalAccessory/ExternalAccessory.h>

@interface WSPairingTableViewController ()

@end

@implementation WSPairingTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
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


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}

@end
