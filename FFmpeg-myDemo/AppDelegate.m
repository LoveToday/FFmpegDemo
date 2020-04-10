//
//  AppDelegate.m
//  FFmpeg-myDemo
//
//  Created by ChenJiangLin on 2020/4/10.
//  Copyright © 2020 LoveToday. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIViewController *rootVC = [[ViewController alloc] init];
    
    UINavigationController *navVc = [[UINavigationController alloc] initWithRootViewController:rootVC];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = navVc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
