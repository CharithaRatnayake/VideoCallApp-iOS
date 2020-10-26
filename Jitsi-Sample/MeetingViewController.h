//
//  MeetingViewController.h
//  Jitsi-Sample
//
//  Created by Dushan on 10/5/20.
//  Copyright © 2020 Dushan. All rights reserved.
//

#import <UIKit/UIKit.h>

@import JitsiMeet;

NS_ASSUME_NONNULL_BEGIN

@interface MeetingViewController : UIViewController <JitsiMeetViewDelegate>

@property (nonatomic, weak) NSString *room;

@end

NS_ASSUME_NONNULL_END
