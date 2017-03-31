//
//  ViewController.m
//  TableViewBUGOC
//
//  Created by study on 17/3/31.
//  Copyright © 2017年 study. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic , strong)UITableView *tableView;
@end

@implementation ViewController


- (IBAction)myClick:(UIButton *)sender {
    
    NSIndexPath *index1 = [NSIndexPath indexPathForRow:2 inSection:0];
    NSIndexPath *index2 = [NSIndexPath indexPathForRow:3 inSection:0];
    
    [self.tableView reloadRowsAtIndexPaths:@[index1 , index2] withRowAnimation:(UITableViewRowAnimationNone)];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:(UITableViewStylePlain)];
    [self.view insertSubview:self.tableView atIndex:0];
    self.tableView.delegate =self;
    self.tableView.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *text = [NSString stringWithFormat:@"section =%li row = %li" , (long)indexPath.section , (long)indexPath.row];
    NSLog(@"%@" , text);
    
    if ((indexPath.row & 1) == 0) {
        return 45;
    }else{
        return 100;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *ids = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ids];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ids];
    }
    NSString *text = [NSString stringWithFormat:@"section =%li row = %li" , (long)indexPath.section , (long)indexPath.row];
    
    cell.textLabel.text = text;
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
