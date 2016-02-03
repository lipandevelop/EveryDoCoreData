//
//  DetailViewController.h
//  EveryDoCD
//
//  Created by Li Pan on 2016-02-03.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

