//
//  main.m
//  Friends Application
//
//  Created by Hala on 15/02/2021.
//

#import <Cocoa/Cocoa.h>
#import "FriendManager.h"
#import "Friend.h"

int main(int argc, const char * argv[]) {
    
    int intValue;
    NSString* stringName, *stringPhone, *stringEmail;
    char charArray[15];
    
    FriendManager *fm = [FriendManager new];
    Friend *friendArray[2] = {[Friend new], [Friend new]};
    
    for (int i = 0; i < 2; i++) {
        
        printf("Please, Enter the id of friend %d: ", i+1);
        scanf("%i", &intValue);
        friendArray[i].fid = intValue;
        
        
        printf("Please, Enter the name of friend %d: ", i+1);
        scanf("%s", charArray);
        stringName = [NSString stringWithUTF8String:charArray];
        friendArray[i].name = stringName;
        
        
        printf("Please, Enter the age of friend %d: ", i+1);
        scanf("%i", &intValue);
        friendArray[i].age = intValue;
        
        
        printf("Please, Enter the email of friend %d: ", i+1);
        scanf("%s", charArray);
        stringEmail = [NSString stringWithUTF8String:charArray];
        friendArray[i].email = stringEmail;
        
        
        
        printf("Please, Enter the phone number of friend %d: ", i+1);
        scanf("%s", charArray);
        stringPhone = [NSString stringWithUTF8String:charArray];
        friendArray[i].phone = stringPhone;
        
        printf("\n");
    }
    
    
    [fm addFriend: friendArray[0]];
    [fm addFriend: friendArray[1]];
    

    printf("\nArray before delete:\n");
    for (int i = 0; i < fm.getAllFriends.count; i++) {
        printf("\nID: %d\nName: %s\nAge: %d\nEmail: %s\nPhone: %s\n", [fm.getAllFriends[i] fid], [stringName UTF8String], [fm.getAllFriends[i] age], [stringEmail UTF8String], [stringPhone UTF8String]);
    }

    
    printf("\nPlease, Enter the friend id that you want to delete: ");
    scanf("%i", &intValue);
    [fm deleteFriend: intValue];
    
    
    printf("\nArray after delete:\n");
    for (int i = 0; i < fm.getAllFriends.count; i++) {
        printf("\nID: %d\nName: %s\nAge: %d\nEmail: %s\nPhone: %s\n", [fm.getAllFriends[i] fid], [stringName UTF8String], [fm.getAllFriends[i] age], [stringEmail UTF8String], [stringPhone UTF8String]);
    }
    
    
    
    return 0;
}
