//
//  AppDelegate.m
//  Jitsi-Sample
//
//  Created by Dushan on 10/2/20.
//  Copyright © 2020 Dushan. All rights reserved.
//

#import "AppDelegate.h"
#import "IQKeyboardManager.h"
@import JitsiMeet;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Prevent issue of keyboard sliding up and cover UITextField
    [[IQKeyboardManager sharedManager] setEnable:YES];
    return YES;
}


#pragma mark - UISceneSession lifecycle

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


#pragma mark - Jitsi universal/deep linking

-  (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> *))restorationHandler{
    return [[JitsiMeet sharedInstance] application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options{
    return [[JitsiMeet sharedInstance] application:app openURL:url options:options];
}


@end
