//
//  Complex.m
//  Complex
//
//  Created by Hala on 14/02/2021.
//

#import "Complex.h"

@implementation Complex

-(void) setReal: (int) _real{
    real = _real;
}

-(int) getReal{
    return real;
}

-(void) setImaginary: (int) _imaginary{
    imaginary = _imaginary;
}

-(int) getImaginary{
    return imaginary;
}

-(Complex*) addComplex: (Complex*) right{
    Complex *addComplexResult = [Complex new];
    
    [addComplexResult setReal: real + [right getReal]];
    [addComplexResult setImaginary: imaginary + [right getImaginary]];
    
    return addComplexResult;
}

-(Complex*) subtractComplex: (Complex*) right{
    Complex *subComplexResult = [Complex new];
    
    [subComplexResult setReal: real - [right getReal]];
    [subComplexResult setImaginary: imaginary - [right getImaginary]];
    
    return subComplexResult;
}

-(void) printComplex{
    printf("%i + %ii",real,imaginary);
}



@end
