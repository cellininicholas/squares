//
//  StaticUtils.h
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StaticUtils : NSObject

typedef enum ColourType {
    ColourRed,
    ColourOrange,
    ColourYellow,
    ColourGreen,
    ColourCyan,
    ColourBlue,
    ColourPurple,
    ColourPink,
    ColourGrey,
    ColourDarkGrey
}ColourType;

typedef struct RGB {
    float r;
    float g;
    float b;
}RGB;

+(UIColor *)niceRed;
+(UIColor *)niceOrange;
+(UIColor *)niceYellow;
+(UIColor *)niceGreen;
+(UIColor *)niceCyan;
+(UIColor *)niceBlue;
+(UIColor *)nicePurple;
+(UIColor *)nicePink;
+(UIColor *)niceGrey;
+(UIColor *)darkGrey;

+(UIColor *)colorWithColourType:(ColourType)type;

+(UIColor *)colorWithIndex:(NSUInteger)index;
+(RGB)rgbWithIndex:(NSUInteger)index;
+(NSString *)colorNameWithIndex:(NSUInteger)index;

@end
