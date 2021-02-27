//
//  Complex.h
//  Complex
//
//  Created by Hala on 14/02/2021.
//

#import <Foundation/Foundation.h>


@interface Complex : NSObject{
    int real, imaginary;
}

-(void) setReal: (int) _real;
-(int) getReal;

-(void) setImaginary: (int) _imaginary;
-(int) getImaginary;

-(Complex*) addComplex: (Complex*) right;
-(Complex*) subtractComplex: (Complex*) right;

-(void) printComplex;


@end

