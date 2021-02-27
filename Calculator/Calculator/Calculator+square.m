//
//  Calculator+square.m
//  Calculator
//
//  Created by Hala on 16/02/2021.
//

#import "Calculator+square.h"
#import "Calculator.h"

@implementation Calculator (square)

-(double) square{
    return [ self firstValue] * [self firstValue];
}

@end
