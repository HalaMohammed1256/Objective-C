//
//  main.m
//  Calculator
//
//  Created by Hala on 15/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "Calculator.h"
#import "Calculator+square.h"

int main(int argc, const char * argv[]) {
    
    
    double firstValue, secondValue, result;
    int choice;

    Calculator *calculator = [Calculator new];

    
    do{
        printf("Please, Enter the first number: ");
        scanf("%lf", &firstValue);
        [calculator setFirstValue:firstValue];
        
        printf("Please, Enter the second number: ");
        scanf("%lf", &secondValue);
        [calculator setSecondValue:secondValue];
        
        do{
            
            printf("\nChoose operation you want:\n1) Add\n2) Sub\n3) Mul\n4) Div\n5) square\n");
            scanf("%i", &choice);
            printf("\n");
            
        }while(choice < 1 || choice > 5);
        
        switch (choice) {
            case 1:
                result = [calculator sum];
                printf("%.2lf + %.2lf = %.2lf", firstValue, secondValue, result);
                break;
                
            case 2:
                result = [calculator sub];
                printf("%.2lf - %.2lf = %.2lf", firstValue, secondValue, result);
                break;
                
            case 3:
                result = [calculator mul];
                printf("%.2lf * %.2lf = %.2lf", firstValue, secondValue, result);
                break;
                
            case 4:
                result = [calculator div];
                printf("%.2lf / %.2lf = %.2lf", firstValue, secondValue, result);
                break;
                
            case 5:
                result = [calculator square];
                printf("%.2lf^2 = %.2lf", firstValue, result);
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
