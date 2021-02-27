//
//  Rectangle.h
//  Rectangle Area
//
//  Created by Hala on 14/02/2021.
//

#import <Foundation/Foundation.h>


@interface Rectangle : NSObject{
    double width, height;
}

-(void) setWidth: (double) _width;
-(double) getWidth;

-(void) setHeight: (double) _height;
-(double) getHeight;

+(double) calculateArea: (double) _width: (double) _height;

@end

