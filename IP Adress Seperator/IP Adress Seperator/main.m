//
//  main.m
//  IP Adress Seperator
//
//  Created by Hala on 18/02/2021.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    char userIp [15];
    BOOL validation;
    printf("Please Enter Your IP Address\n");
    
    scanf("%s",userIp);
    
    NSString *fullIpAddress = [NSString stringWithCString:userIp encoding:1];
    
    NSString *pattern= @"(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-9][0-9]|25[0-9])\\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-9][0-9]|25[0-9])";
    
    NSRegularExpression *regex= [NSRegularExpression regularExpressionWithPattern:pattern  options:0 error:NULL];
    
    NSRange range = NSMakeRange(0, fullIpAddress.length);
    
    NSArray *matches = [regex matchesInString:fullIpAddress options:0 range:range];
    
    if (matches.count>0) {
        validation=YES;
    }else { validation = NO;}
    
    if (validation == YES) {
        printf("Valid IP\n");
        printf("Func 1\n");

        NSArray *ip1 = [NSArray array];
        ip1 = [fullIpAddress componentsSeparatedByString:@"."];
        
        for (int i=0; i<ip1.count; i++) {
            printf("%s\n",[[ip1 objectAtIndex:i] UTF8String]);
         
        }
        printf("-----------------------\n");
        NSString *ip2;
        ip2 = [fullIpAddress stringByReplacingOccurrencesOfString:@"." withString:@"\n"];
        printf("Func 2 \n");
        printf("%s\n",[ip2 UTF8String]);
        
        printf("-----------------------\n");
        
        NSCharacterSet *ip3 = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789."]invertedSet];
        NSArray *ipArray = [[[fullIpAddress componentsSeparatedByCharactersInSet:ip3]componentsJoinedByString:@""]componentsSeparatedByString:@"."];
        printf("Func 3 \n");
        for (int i = 0 ; i<ipArray.count; i++) {
            printf("%s\n",[[ipArray objectAtIndex:i]UTF8String]);
        }
        
        printf("-----------------------\n");
        printf("Func 4 \n");

        NSPredicate *ip4 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",pattern];
        if ([ip4 evaluateWithObject:fullIpAddress]) {
            NSArray *ipArray2 = [fullIpAddress componentsSeparatedByString:@"."];

            for (int i=0; i<ipArray2.count; i++) {
                printf("%s\n",[[ipArray2 objectAtIndex:i] UTF8String]);
            }
        }
       
    }else{printf("IP Not Valid");}
    return 0;
}
