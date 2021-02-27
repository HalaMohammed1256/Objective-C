//
//  CountInstance.m
//  ObjectCounter
//
//  Created by Hala on 15/02/2021.
//

#import "CountInstance.h"

@implementation CountInstance

static int counter;

-(id) init{
    if([super init]){
        counter++;
        printf("object count %d", counter);
    }
    return self;
}

+(int) count{
    return counter;
}

@end
