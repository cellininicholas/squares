//
//  ViewController.h
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameLevelViewController : UIViewController {
    IBOutlet UIView *gameView;
    
    BOOL square2DArray[5][5];
    NSMutableArray *squareArray;
    
    
}

@end
