//
//  ViewController.m
//  Jitsi-Sample
//
//  Created by Dushan on 10/2/20.
//  Copyright © 2020 Dushan. All rights reserved.
//

#import "ViewController.h"
#import "MeetingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button.layer.cornerRadius = 10;
    self.button.clipsToBounds = true;
    self.room = nil;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
   [textField resignFirstResponder];
   return NO;
}


- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"JoinJitsi"]) {
        self.room = self.roomName.text;
        if (self.room == nil || [self.room length] == 0) {
            return NO;
        }
    }
    return YES;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"JoinJitsi"]) {
        MeetingViewController *meeting = [segue destinationViewController];
        meeting.room = self.room;
    }
}


@end
