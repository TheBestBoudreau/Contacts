//
//  main.m
//  Contacts
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *nameEmailArray=[[ContactList alloc]init];
        
        
        while(YES)
        {
            Contact *nameEmail =[[Contact alloc]init];
            
        InputCollector *object =[[InputCollector alloc]init];
        NSString *commandInput = [object inputForPrompt:@"Enter a command"];
            if ([commandInput isEqualToString:@"quit"])
            {
                NSLog(@"Goodbye");
                break;
            }
            else if ([commandInput isEqualToString:@"new"])
            {
                nameEmail.email=[object inputForPrompt:@"Enter your email"];
                nameEmail.name= [object inputForPrompt:@"Enter your name"];
                [nameEmailArray addContact:nameEmail];
                
            }
            else if ([commandInput isEqualToString:@"list"])
            {
                [nameEmailArray listContact];
            }

        
        }
        

        
        
    }
    return 0;
}
