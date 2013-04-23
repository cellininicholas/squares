//
//  SquareView.h
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "StaticUtils.h"

typedef enum EdgeType {
    EdgeNone        = 0,
    EdgeTopOut      = 1 << 0, // 1
    EdgeBottomOut   = 1 << 1, // 2
    EdgeLeftOut     = 1 << 2, // 4
    EdgeRightOut    = 1 << 3, // 8
}EdgeType;

@interface SquareView : UIView {
    Byte edgeFlags;
    ColourType colType;
    
    UIView *innerColourView;
    
}
/*******************
        EDGES
 ******************/

/*
  Should call inside an animation block
 */
-(void)setThePreparedInnerRect;
/*
 Changes ONLY the specified edge
 */
-(void)setEdgeOut:(EdgeType)edge;
-(void)setEdgeIn:(EdgeType)edge;
/*
 Changes ALL edges. Only the given edge will be set to OUT
 */
-(void)setOnlyEdgeOut:(EdgeType)edge;
/*
 Changes ALL edges. All edges but the given edge will be set to OUT
 */
-(void)setOnlyEdgeIn:(EdgeType)edge;
/*
 Set all edges to IN
 */
-(void)clearAllEdges;



/*******************
        OTHER
 ******************/
-(void)setColourType:(ColourType)col;


@end
