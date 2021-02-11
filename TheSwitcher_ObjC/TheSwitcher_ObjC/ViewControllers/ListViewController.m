//
//  ViewController.m
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import "ListViewController.h"

@interface ListViewController ()
@property DivisionsDataSource *dataSource;
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *divisions = @[@"Kitchen",@"Living room",@"Master bedroom",@"Guest's bedroom"];
    self.dataSource = [[DivisionsDataSource alloc] initWith: divisions];
    self.tableView.dataSource = self.dataSource;
    self.tableView.tableFooterView = [[UIView alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath) {
        [self.tableView deselectRowAtIndexPath: indexPath animated: true];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    DetailViewController *detailViewController = [segue destinationViewController];
    DivisionsCell *cell = [self.tableView cellForRowAtIndexPath: indexPath];
    if (indexPath && detailViewController && cell) {
        bool isOn = [cell.lightSwitch isOn];
        detailViewController.status = isOn;
        detailViewController.division = cell.divisionLabel.text;
    }
}


@end
