//
//  main.m
//  Knwoing The Class
//
//  Created by Hala on 16/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "Class A.h"
#import "Class B.h"
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    
    Class_A *objA = [Class_A new];
    if([objA isMemberOfClass:[MyClass class]] == YES)
    {
        printf("true\n");
    }
    else
        printf("false\n");
    Class_B *objB = [Class_B new];
    if([objB isKindOfClass:[Class_A class]] == YES)
    {
        printf("true\n");
    }
    else
        printf("false\n");
    MyClass *myObj = [MyClass new];
    if([myObj isMemberOfClass:[Class_A class]] == YES)
    {
        printf("true\n");
    }
    else
        printf("false\n");
    
    Class_A *obA = [Class_A new];
    if([obA respondsToSelector:@selector(methodA)] == YES)
    {
        printf("true\n");
    }
    else
        printf("false\n");
    Class_B *obB = [Class_B new];
    if([obB respondsToSelector:@selector(methodA)] == YES)
    {
        printf("true\n");
    }
    else
        printf("false\n");
    MyClass *myOb = [MyClass new];
    if([myOb respondsToSelector:@selector(myMethod)] == YES)
    {
        printf("true\n");
    }
    else
        printf("false\n");
    
    return 0;
}
