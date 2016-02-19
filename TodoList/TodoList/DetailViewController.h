//
//  DetailViewController.h
//  TodoList
//
//  Created by phuocdai on 2/19/16.
//  Copyright © 2016 phuocdai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameRemine;
@property (nonatomic, strong) NSString *valueNameRemine;

@end
