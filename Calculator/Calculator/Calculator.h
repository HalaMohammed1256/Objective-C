//
//  Calculator.h
//  Calculator
//
//  Created by Hala on 15/02/2021.
//

#import <Cocoa/Cocoa.h>


@interface Calculator : NSObject

@property double firstValue;
@property double secondValue;

-(double) sum;
-(double) sub;
-(double) mul;
-(double) div;

@end

