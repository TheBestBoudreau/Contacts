//
//  ContactList.m
//  Contacts
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "ContactList.h"
@implementation ContactList

-(void)addContact:(Contact *)newContact{
    [_contactArray addObject:newContact];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactArray =[[NSMutableArray alloc]init];
    }
    return self;
}

-(void)listContact
{
    for (Contact *listNameEmail in _contactArray) {
        NSLog(@"%lu %@ %@",[_contactArray indexOfObject:listNameEmail], listNameEmail.name, listNameEmail.email);
    }
}
@end
