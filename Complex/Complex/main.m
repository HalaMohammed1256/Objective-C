//
//  main.m
//  Complex
//
//  Created by Hala on 14/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    
    char redo;
    int value, choice;

    Complex *firstComplex = [Complex new];
    Complex *secondComplex = [Complex new];
    
    Complex *addition = [Complex new];
    Complex *subtraction = [Complex new];
    
    do{
        // first complex
        printf("Please, Enter the real of first complex: ");
        scanf("%i", &value);
        [firstComplex setReal:value];
        
        printf("Please, Enter the imaginary of first complex: ");
        scanf("%i", &value);
        [firstComplex setImaginary:value];
        
        // second complex
        printf("\nPlease, Enter the real of second complex: ");
        scanf("%i", &value);
        [secondComplex setReal:value];
        
        printf("Please, Enter the imaginary of second complex: ");
        scanf("%i", &value);
        [secondComplex setImaginary:value];
                
        
        addition = [firstComplex addComplex:secondComplex];
        subtraction = [firstComplex subtractComplex:secondComplex];
        
        printf("\n\nFirst complex: ");
        [firstComplex printComplex];
        printf("\nsecond complex: ");
        [secondComplex printComplex];
        printf("\n\n");
        
        do{
            printf("if you want to add complex, press 1 and if subtraction, press 2:  ");
            scanf("%i", &choice);
        }while (choice < 1 || choice > 2);
        
        switch (choice) {
            case 1:
                printf("\naddition complex: ");
                [addition printComplex];
                break;
                
            case 2:
                printf("\nsubtraction complex: ");
                [subtraction printComplex];
                break;
                
            default:
                break;
        }
        
        
        printf("\n\nDo you want to redo the test? y|n:  ");
        scanf(" %c",&redo);
        printf("\n");
        
    }while (redo == 'y' || redo == 'Y');
    
    return 0;
}
