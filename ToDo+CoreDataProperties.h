//
//  ToDo+CoreDataProperties.h
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *task;
@property (nonatomic) BOOL isComplete;
@property (nonatomic) int32_t priority;

@end

NS_ASSUME_NONNULL_END
