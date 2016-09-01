//
//  AppDelegate.m
//  ZHW日历推送
//
//  Created by 闫世超 on 16/8/31.
//  Copyright © 2016年 闫世超. All rights reserved.
//

#import "AppDelegate.h"
#import "ZHWWindowController.h"

@interface AppDelegate ()

@property (nonatomic ,strong) ZHWWindowController  *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.window = [[ZHWWindowController alloc]initWithWindowNibName:@"ZHWWindowController"];
    
    [[self.window window] center];
    
    [self.window showWindow:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
