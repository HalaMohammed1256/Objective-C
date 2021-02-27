//
//  main.m
//  Create Protocole
//
//  Created by Hala on 16/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "Rectangle.h"
#import "Triangl.h"

int main(int argc, const char * argv[]) {
    
    double firstValue, secondValue, result;
    int choice;

    Rectangle *rectangle = [Rectangle new];
    Triangl *triangle = [Triangl new];

    
    do{
        
        do{
            
            printf("\nChoose operation you want:\n1) Rectangle area\n2) Triangle area\n");
            scanf("%i", &choice);
            printf("\n");
            
        }while(choice < 1 || choice > 2);
        
        
        switch (choice) {
            case 1:
                printf("Please, Enter the width: ");
                scanf("%lf", &firstValue);
                [rectangle setWidth:firstValue];
                
                printf("Please, Enter the height: ");
                scanf("%lf", &secondValue);
                [rectangle setHeight:secondValue];
                
                
                result = [rectangle calcArea];
                printf("\nRectangle area = %.2lf", result);
                break;
                
            case 2:
                printf("Please, Enter the base: ");
                scanf("%lf", &firstValue);
                [triangle setBase:firstValue];
                
                printf("Please, Enter the height: ");
                scanf("%lf", &secondValue);
                [triangle setHeight:secondValue];
                
                
                result = [triangle calcArea];
                printf("\nTriangle area = %.2lf", result);
                break;
                
        }
        
        
        do{
            
            printf("\n\n1) if you want to redo the test\n2) Exit\n");
            scanf("%i", &choice);
            printf("\n");
            
        }while(choice < 1 || choice > 2);
        
        
    }while (choice == 1);
    
    return 0;
}
