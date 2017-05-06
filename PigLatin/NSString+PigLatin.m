//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)PigLatin{
    
    NSArray *alphabet = @[@"b", @"c", @"d", @"f", @"g", @"h", @"j", @"k", @"l", @"m", @"n", @"p", @"q", @"r", @"s", @"t", @"v", @"w", @"x", @"z"];
    
    NSString *input = self;
    NSMutableArray *inputArray = [[input componentsSeparatedByString:@" "] mutableCopy];
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    
    for(NSString *all in inputArray){
        NSMutableArray *alphabetsArray = [[NSMutableArray alloc] init];
        NSString *first;
        NSString *previous = @"";
        NSString *last;
        for(NSInteger i=0 ; i<all.length ; i++){
            NSString *current = [all substringWithRange:NSMakeRange(i,1)];
            if([alphabet containsObject:current] && ![alphabet containsObject:previous]){
                [alphabetsArray addObject:current];
                first = [alphabetsArray componentsJoinedByString:@""];
                NSMutableArray *letters = [[NSMutableArray alloc] initWithCapacity:[all length]];
                for(int j=0 ; j<[all length] ; j++){
                    NSString *chars = [NSString stringWithFormat:@"%c", [all characterAtIndex:j]];
                    [letters addObject:chars];
                }
                [letters removeObject:current];
                previous = current;
                last = [letters componentsJoinedByString:@""];
                }
        }
        NSString *total = [first stringByAppendingString:@"ay"];
        NSString *final = [last stringByAppendingString:total];
        [outputArray addObject:final];
    }
    NSString *pigLatin = [outputArray componentsJoinedByString:@" "];
    return pigLatin;
}


@end
