//
//  ViewController.h
//  Jitsi-Sample
//
//  Created by Dushan on 10/2/20.
//  Copyright © 2020 Dushan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *roomName;
@property (nonatomic, weak) IBOutlet UIButton *button;
@property (nonatomic, copy) NSString *room;

@end

