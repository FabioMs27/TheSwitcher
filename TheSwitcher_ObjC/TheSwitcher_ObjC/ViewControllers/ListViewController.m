//
//  ViewController.m
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import "ListViewController.h"

@interface ListViewController ()
@property DivisionDataSource *dataSource;
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *divisions = @[@"Kitchen",@"Living room",@"Master bedroom",@"Guest's bedroom"];
    self.dataSource = [[DivisionDataSource alloc] initWith: divisions];
    self.tableView.dataSource = self.dataSource;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    DetailViewController *detailViewController = [segue destinationViewController];
    DivisionsCell *cell = [self.tableView cellForRowAtIndexPath: indexPath];
    if (indexPath && detailViewController && cell) {
        bool isOn = [cell.lightSwitch isOn];
        detailViewController.divisionStatusLabel.text = isOn ? @"ON" : @"OFF";
        detailViewController.lampImageView.image = [UIImage imageNamed: isOn ? @"light_image_ON" : @"light_image_OFF"];
        detailViewController.divisionTextLabel.text = [NSString stringWithFormat: @"Your %@ light is", cell.divisionLabel.text];
    }
}


@end
