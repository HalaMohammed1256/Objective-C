//
//  main.m
//  Star Diamond
//
//  Created by Hala on 14/02/2021.
//

#import <Cocoa/Cocoa.h>

void printDiamond(int n)
{
    int space = n - 1;
  
    for (int i = 0; i < n; i++)
    {
        for (int j = 0;j < space; j++){
            printf(" ");
        }
        space--;
        
        for (int j = 0;j <= i; j++){
            printf("* ");
        }
  
        printf("\n");
        
    }
  
    space = 0;
  
    for (int i = n; i > 0; i--)
    {
        for (int j = 0; j < space; j++){
            printf(" ");
        }
        space++;
  
        for (int j = 0;j < i;j++){
            printf("* ");
        }
  
        printf("\n");
    }
}
  

int main(int argc, const char * argv[]) {
    
    char redo;
    int value;
    
    do{

        printf("Please, Enter the diamond dimention: ");
        scanf("%i", &value);
        
        
        printDiamond(value);
        
        
        printf("\n\nDo you want to redo the test? y|n:  ");
        scanf(" %c",&redo);
        printf("\n");
        
    }while (redo == 'y' || redo == 'Y');
    
    return 0;
}
