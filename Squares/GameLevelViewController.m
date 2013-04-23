//
//  ViewController.m
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import "GameLevelViewController.h"

#import "SquareView.h"

@interface GameLevelViewController ()

@end

static const CGFloat squareSize = 64;

@implementation GameLevelViewController

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint loc = [touch locationInView:gameView];
    
    for (SquareView *square in squareArray) {
        if (CGRectContainsPoint(square.frame, loc)) {
            [square toggleAllEdges];
            [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
                [square setThePreparedInnerRect];
            } completion:^(BOOL finished) {
                
            }];
        }
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

#pragma mark 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0; i < 5; ++i) {
        for (int j = 0; j < 5; ++j) {
            square2DArray[i][j] = NO;
        }
    }
    
    squareArray = [[NSMutableArray alloc] init];
    
    /*
     Must write a parsing function for levels
     */
    SquareView *tmpSquare = nil;
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(0, 0, squareSize, squareSize)];
    [tmpSquare setColourType:ColourGreen];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(squareSize, 0, squareSize, squareSize)];
    [tmpSquare setColourType:ColourBlue];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(squareSize, squareSize, squareSize, squareSize)];
    [tmpSquare setColourType:ColourRed];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(0, squareSize, squareSize, squareSize)];
    [tmpSquare setColourType:ColourGreen];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(0, squareSize * 2, squareSize, squareSize)];
    [tmpSquare setColourType:ColourPurple];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(squareSize, squareSize * 2, squareSize, squareSize)];
    [tmpSquare setColourType:ColourPurple];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(squareSize, squareSize * 3, squareSize, squareSize)];
    [tmpSquare setColourType:ColourPurple];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
    tmpSquare = [[SquareView alloc] initWithFrame:CGRectMake(0, squareSize * 3, squareSize, squareSize)];
    [tmpSquare setColourType:ColourPurple];
    [squareArray addObject:tmpSquare];
    [gameView addSubview:tmpSquare];
    
}

- (void)dealloc {
    free(square2DArray);
    //[super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
