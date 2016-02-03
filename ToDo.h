//
//  ToDo.h
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
- (void)configureWithName: (NSString *)name taskDescription: (NSString *)task priorityNumber: (int32_t *)priority;

@end

NS_ASSUME_NONNULL_END

#import "ToDo+CoreDataProperties.h"
