//
//  FriendManager.m
//  Friends Application
//
//  Created by Hala on 15/02/2021.
//

#import "FriendManager.h"
#import "Friend.h"

@implementation FriendManager


-(void) addFriend: (Friend*) addfriends{
    if(_friendsArray == nil){
        _friendsArray = [NSMutableArray new];
    }
    [_friendsArray addObject:addfriends];
    
}

-(void) deleteFriend: (int) friendID{
    for (int i = 0; i < _friendsArray.count; i++) {
        if(_friendsArray[i].fid == friendID){
            [_friendsArray removeObjectAtIndex:i];
        }
    }
}

-(NSMutableArray*) getAllFriends{
    return _friendsArray;
}



@end
