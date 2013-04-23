//
//  AppDelegate.h
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameLevelViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GameLevelViewController *viewController;

@end
