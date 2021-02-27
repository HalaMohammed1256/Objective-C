//
//  main.m
//  Rectangle Area
//
//  Created by Hala on 14/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    
    double value, area;
    char redo;

    Rectangle *rectangle = [Rectangle new];
    
    do{
        printf("Please, Enter the width of rectangle: ");
        scanf("%lf", &value);
        [rectangle setWidth:value];
        
        printf("Please, Enter the height of rectangle: ");
        scanf("%lf", &value);
        [rectangle setHeight:value];
        
        area = [Rectangle calculateArea:[rectangle getWidth] :[rectangle getHeight]];
        printf("\nRectangle Area: %lf",area);
        
        
        printf("\n\nDo you want to redo the test? y|n:  ");
        scanf(" %c",&redo);
        printf("\n");
        
    }while (redo == 'y' || redo == 'Y');
    
    
    return 0;
}
