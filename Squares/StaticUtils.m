//
//  StaticUtils.m
//  Squares
//
//  Created by Nick Cellini on 23/04/13.
//  Copyright (c) 2013 NickJack. All rights reserved.
//

#import "StaticUtils.h"

@implementation StaticUtils

+(UIColor *)colorWithColourType:(ColourType)type {
    if (type == ColourRed) {
        return [self niceRed];
    } else if (type == ColourYellow) {
        return [self niceYellow];
    } else if (type == ColourPurple) {
        return [self nicePurple];
    } else if (type == ColourPink) {
        return [self nicePink];
    } else if (type == ColourOrange) {
        return [self niceOrange];
    } else if (type == ColourGrey) {
        return [self niceGrey];
    } else if (type == ColourGreen) {
        return [self niceGreen];
    } else if (type == ColourDarkGrey) {
        return [self niceGrey];
    } else if (type == ColourCyan) {
        return [self niceCyan];
    } else if (type == ColourBlue) {
        return [self niceBlue];
    }
    
    return [self niceGrey];
}

+(UIColor *)niceRed {
    return [UIColor colorWithHue:0 saturation:0.74 brightness:1 alpha:1];
}

+(RGB)niceRGBRed {
    RGB col;
    col.r = 0.996;
    col.g = 0.27;
    col.b = 0.263;
    return col;
}

+(UIColor *)niceOrange {
    return [UIColor colorWithHue:0.08 saturation:0.87 brightness:1 alpha:1];
}

+(RGB)niceRGBOrange {
    RGB col;
    col.r = 1;
    col.g = 0.531;
    col.b = 0.1333;
    return col;
}

+(UIColor *)niceYellow {
    return [UIColor colorWithHue:0.17 saturation:0.8 brightness:1 alpha:1];
}

+(RGB)niceRGBYellow {
    RGB col;
    col.r = 1;
    col.g = 1;
    col.b = 0.2;
    return col;
}

+(UIColor *)niceGreen {
    return [UIColor colorWithHue:0.29 saturation:0.8 brightness:1 alpha:1];
}

+(RGB)niceRGBGreen {
    RGB col;
    col.r = 0.4;
    col.g = 1;
    col.b = 0.2;
    return col;
}

+(UIColor *)niceCyan {
    return [UIColor colorWithHue:0.44 saturation:0.6 brightness:1 alpha:1];
}

+(RGB)niceRGBCyan {
    RGB col;
    col.r = 0.4;
    col.g = 0.996;
    col.b = 0.796;
    return col;
}

+(UIColor *)niceBlue {
    return [UIColor colorWithHue:0.6 saturation:0.8 brightness:1 alpha:1];
}

+(RGB)niceRGBBlue {
    RGB col;
    col.r = 0.196;
    col.g = 0.525;
    col.b = 0.988;
    return col;
}

+(UIColor *)nicePurple {
    return [UIColor colorWithHue:0.75 saturation:0.67 brightness:1 alpha:1];
}

+(RGB)niceRGBPurple {
    RGB col;
    col.r = 0.6705;
    col.g = 0.3333;
    col.b = 1;
    return col;
}

+(UIColor *)nicePink {
    return [UIColor colorWithHue:0.84 saturation:0.47 brightness:1 alpha:1];
}

+(RGB)niceRGBPink {
    RGB col;
    col.r = 1;
    col.g = 0.5333;
    col.b = 0.996;
    return col;
}

+(UIColor *)niceGrey {
    return [UIColor colorWithHue:0 saturation:0 brightness:0.6 alpha:1];
}

+(RGB)niceRGBGrey {
    RGB col;
    col.r = 0.6117;
    col.g = 0.6117;
    col.b = 0.6117;
    return col;
}

+(UIColor *)darkGrey {
    return [UIColor colorWithHue:0 saturation:0 brightness:0.3 alpha:1];
}

+(RGB)niceRGBDarkGrey {
    RGB col;
    col.r = 0.3019;
    col.g = 0.3019;
    col.b = 0.3019;
    return col;
}

+(NSUInteger)reflectiveIndexWithIndex:(NSUInteger)index andMaxIndex:(NSUInteger)max {
    NSUInteger i = index;
    if (((index - 1) / max) % 2 == 0) {
        if (index < (max * 2) + 1) {
            i = index % (max + 1);
        } else {
            i = (index - 1) % max;
            i++;
        }
    } else {
        NSUInteger decrement = index;
        while (decrement > max) {
            decrement -= max;
        }
        int j = 1;
        while (i > max) {
            i = max - (decrement * j);
            j++;
        }
    }
    return i;
}

/*
 6 = 6
 7 = 7
 8 = 6
 9 = 5
 10 = 4
 11 = 3
 
 */
+(UIColor *)colorWithIndex:(NSUInteger)index {
    
    //NSUInteger i = [self reflectiveIndexWithIndex:index andMaxIndex:7];
    NSUInteger i = index % 8;
    //NSLog(@"Index: %d i: %d", index, i);
    
    switch (i) {
        case 0:
            return [self niceBlue];
            break;
        case 1:
            return [self niceRed];
            break;
        case 2:
            return [self niceOrange];
            break;
        case 3:
            return [self niceYellow];
            break;
        case 4:
            return [self niceGreen];
            break;
        case 5:
            return [self niceCyan];
            break;
        case 6:
            return [self nicePurple];
            break;
        case 7:
            return [self nicePink];
            break;
            
        default:
            return [self niceGrey];
            break;
    }
}

+(RGB)rgbWithIndex:(NSUInteger)index {
    NSUInteger i = index % 8;
    
    switch (i) {
        case 0:
            return [self niceRGBBlue];
            break;
        case 1:
            return [self niceRGBRed];
            break;
        case 2:
            return [self niceRGBOrange];
            break;
        case 3:
            return [self niceRGBYellow];
            break;
        case 4:
            return [self niceRGBGreen];
            break;
        case 5:
            return [self niceRGBCyan];
            break;
        case 6:
            return [self niceRGBPurple];
            break;
        case 7:
            return [self niceRGBPink];
            break;
            
        default:
            return [self niceRGBGrey];
            break;
    }
}

+(NSString *)colorNameWithIndex:(NSUInteger)index {
    //NSUInteger i = [self reflectiveIndexWithIndex:index andMaxIndex:7];
    NSString *str = nil;
    NSUInteger i = index % 8;
    switch (i) {
        case 0:
            str = @"Blue";
            break;
        case 1:
            str = @"Red";
            break;
        case 2:
            str = @"Orange";
            break;
        case 3:
            str = @"Yellow";
            break;
        case 4:
            str = @"Green";
            break;
        case 5:
            str = @"Cyan";
            break;
        case 6:
            str = @"Purple";
            break;
        case 7:
            str = @"Pink";
            break;
            
        default:
            str = @"Grey";
            break;
    }
    
    if (index >= 8) {
        NSUInteger x = index / 8;
        return [NSString stringWithFormat:@"%@ %d", str, x + 1];
    }
    
    return str;
}

@end
