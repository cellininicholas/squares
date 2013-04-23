//
//  SquareView.m
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import "SquareView.h"


static const CGFloat edgeSize = 2;


@implementation SquareView

#pragma mark - Edges

-(void)setEdgeOut:(EdgeType)edge {
    edgeFlags = edgeFlags | edge; // add the flag
}

-(void)setEdgeIn:(EdgeType)edge {
    if ((edgeFlags & edge) == edge) {
        // edge was set
        edgeFlags = edgeFlags - edge;
    } // else - edge was already in
}

-(void)setOnlyEdgeOut:(EdgeType)edge {
    edgeFlags = edge;
}

-(void)setOnlyEdgeIn:(EdgeType)edge {
    edgeFlags = ~edge; // complement
}

-(void)clearAllEdges {
    edgeFlags = EdgeNone;
}

-(void)toggleAllEdges {
    edgeFlags = ~edgeFlags;
}

// Should be called from animation blocks
-(void)setThePreparedInnerRect {
    CGRect tmpRect = baseInnerRect;
    if (edgeFlags != EdgeNone) {
        if ((edgeFlags & EdgeTopOut) == EdgeTopOut) {
            tmpRect.origin.y -= edgeSize;
            tmpRect.size.height += edgeSize;
        }
        if ((edgeFlags & EdgeBottomOut) == EdgeBottomOut) {
            tmpRect.size.height += edgeSize;
        }
        if ((edgeFlags & EdgeLeftOut) == EdgeLeftOut) {
            tmpRect.origin.x -= edgeSize;
            tmpRect.size.width += edgeSize;
        }
        if ((edgeFlags & EdgeRightOut) == EdgeRightOut) {
            tmpRect.size.width += edgeSize;
        }
    }
    [innerColourView setFrame:tmpRect];
}

#pragma mark -

/*******************
 OTHER
 ******************/
-(void)setColourType:(ColourType)col {
    colType = col;
    [innerColourView setBackgroundColor:[StaticUtils colorWithColourType:colType]];
}


#pragma mark -

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        edgeFlags = EdgeNone;
        baseInnerRect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        baseInnerRect = CGRectInset(baseInnerRect, edgeSize, edgeSize);
        innerColourView = [[UIView alloc] initWithFrame:baseInnerRect];
        [self addSubview:innerColourView];
        
        [self setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
