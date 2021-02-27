//
//  Rectangle.m
//  Rectangle Area
//
//  Created by Hala on 14/02/2021.
//

#import "Rectangle.h"


@implementation Rectangle

-(void) setWidth: (double) _width{
    width = _width;
}
    
-(double) getWidth{
    return width;
}

-(void) setHeight: (double) _height{
    height = _height;
}
-(double) getHeight{
    return height;
}

+(double) calculateArea: (double) _width: (double) _height{
    return _width * _height;
}


@end
