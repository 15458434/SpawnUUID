//
//  AppDelegate.m
//  SpawnUUID
//
//  Created by Mark Cornelisse on 16/02/2018.
//  Copyright © 2018 Mark Cornelisse. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)reopenMainWindow {
    NSApplication *app = [NSApplication sharedApplication];
    if (app.windows.count == 0) {
        NSStoryboard *storyBoard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
        NSWindowController *windowController = [storyBoard instantiateControllerWithIdentifier:@"MainWindowController"];
        [windowController showWindow:self];
    } else {
        NSWindow *window = app.mainWindow;
        if (window) {
            [window makeKeyAndOrderFront:self];
        } else {
            NSWindow *window = app.windows.firstObject;
            [window makeKeyAndOrderFront:self];
        }
    }
}

#pragma mark - NSApplicationDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
    [self reopenMainWindow];
    
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
