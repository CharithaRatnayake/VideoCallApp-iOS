//
//  MeetingViewController.m
//  Jitsi-Sample
//
//  Created by Dushan on 10/5/20.
//  Copyright © 2020 Dushan. All rights reserved.
//

#import "MeetingViewController.h"

@interface MeetingViewController ()

@end

@implementation MeetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Dismiss meeting if no room available
    if (self.room == nil) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
        return;
    }

    // Attach this controller as the delegate.
    JitsiMeetView *jitsiMeetView = (JitsiMeetView *) self.view;
    jitsiMeetView.delegate = self;

    // Join the room
    JitsiMeetConferenceOptions *options = [JitsiMeetConferenceOptions fromBuilder:^(JitsiMeetConferenceOptionsBuilder *builder) {
        builder.serverURL = [NSURL URLWithString:@"https://learn.techleadintl.com/"];
        builder.room = self.room;
        builder.audioOnly = NO;
        builder.audioMuted = NO;
        // builder.videoMuted = NO;
        builder.welcomePageEnabled = NO;
    }];

    [jitsiMeetView join:options];
}


- (void)conferenceWillJoin:(NSDictionary *)data {
    // NSLog(@"Start join conference %@", self.room);
}


- (void)conferenceJoined:(NSDictionary *)data {
    // NSLog(@"Joined conference %@", self.room);
}


- (void)conferenceTerminated:(NSDictionary *)data {
    // NSLog(@"Terminated conference %@", self.room);
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
