//
//  FriendManager.h
//  Friends Application
//
//  Created by Hala on 15/02/2021.
//

#import <Foundation/Foundation.h>
#import "Friend.h"


@interface FriendManager : NSObject


@property NSMutableArray<Friend*> *friendsArray;

-(void) addFriend: (Friend*) addfriends;
-(void) deleteFriend: (int) friendID;
-(NSMutableArray*) getAllFriends;

@end

