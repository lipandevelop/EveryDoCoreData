//
//  ToDoCell.h
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;

@end
