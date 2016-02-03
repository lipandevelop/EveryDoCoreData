//
//  ToDo.m
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

// Insert code here to add functionality to your managed object subclass

- (void)configureWithName: (NSString *)name taskDescription: (NSString *)task priorityNumber: (int32_t)priority {
    self.name = name;
    self.task = task;
    self.priority = priority;
    self.isComplete = NO;
    
}


@end
