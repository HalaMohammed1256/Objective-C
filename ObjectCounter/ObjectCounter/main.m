//
//  main.m
//  ObjectCounter
//
//  Created by Hala on 15/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "CountInstance.h"

int main(int argc, const char * argv[]) {
    
    CountInstance *object1 = [[CountInstance alloc] init];
    CountInstance *object2 = [[CountInstance alloc] init];
    CountInstance *object3 = [[CountInstance alloc] init];
    CountInstance *object4 = [[CountInstance alloc] init];
    CountInstance *object5 = [[CountInstance alloc] init];
    
    //printf("Objects count = %d", [CountInstance count]);
    
    return 0;
}
