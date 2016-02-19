//
//  MainViewController.m
//  TodoList
//
//  Created by phuocdai on 2/19/16.
//  Copyright © 2016 phuocdai. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController (){
    NSMutableArray *datasource;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    datasource = [[NSMutableArray alloc] initWithArray:@[@"Mouse",@"Cat"]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return datasource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = datasource[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *detailVC = (DetailViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewControllerID"];
    detailVC.valueNameRemine = datasource[indexPath.row];
    [self.navigationController pushViewController:detailVC animated:YES];
}

@end
