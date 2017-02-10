//
//  AppDelegate.m
//  NSImageGif动画
//
//  Created by admin on 17/2/8.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSImageView *GifImageView;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    //动画(NSImageView 相当于 UIImageView 的动画，差别：直接用GIF)
        _GifImageView.imageScaling = NSImageScaleAxesIndependently;
        [_GifImageView setAnimates:YES];
        [_GifImageView setImage:[NSImage imageNamed:@"loading.gif"]];
        _GifImageView.canDrawSubviewsIntoLayer = YES;
    
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
