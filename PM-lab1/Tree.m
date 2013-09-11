//
//  Tree.m
//  PM-lab1
//
//  Created by Anna Dovnar on 9/9/13.
//  Copyright (c) 2013 Anna Dovnar. All rights reserved.
//

#import "Tree.h"
#import "Apple.h"

@implementation Tree

-(id)init {
    srand(time(NULL));
    self.apples = [[NSMutableArray alloc] init];
    return self;
}

-(void)shake {
    if (self.apples.count == 0) {
        NSLog(@"flower first!");
    }
    NSLog(@"shake %lu apples", rand()%self.apples.count);
}

-(void)flower {
    int n = rand()%30;
    NSLog(@"flower %d apples", n);
    for (int i = 0; i < n; ++i) {
        [self.apples addObject:[[Apple alloc] init]];
    }
}

@end
