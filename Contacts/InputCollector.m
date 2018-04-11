//
//  InputCollector.m
//  Contacts
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString;
{
    NSLog(@"%@",promptString);
    char value[200];
    fgets(value,200,stdin);
    
    NSString *inpString =[NSString stringWithCString:value encoding:NSUTF8StringEncoding];
    
    inpString=[inpString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return  inpString;
    
}


@end
