//
//  ContactList.h
//  Contacts
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactList : NSObject

@property NSMutableArray *contactArray;
-(void)listContact;
-(void)addContact:(Contact *)newContact;
@end
