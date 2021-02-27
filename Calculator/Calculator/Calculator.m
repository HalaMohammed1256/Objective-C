//
//  Calculator.m
//  Calculator
//
//  Created by Hala on 15/02/2021.
//

#import "Calculator.h"

@implementation Calculator

-(double) sum{
    return _firstValue + _secondValue;
}

-(double) sub{
    return _firstValue - _secondValue;
}

-(double) mul{
    return _firstValue * _secondValue;
}

-(double) div{
    return _firstValue / _secondValue;
}


@end
