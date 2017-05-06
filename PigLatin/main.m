//
//  main.m
//  PigLatin
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *new = @"New Pig Latin String";
        
        NSLog(@"%@", new);
        NSLog(@"%@", [new PigLatin]);
    }
    return 0;
}
