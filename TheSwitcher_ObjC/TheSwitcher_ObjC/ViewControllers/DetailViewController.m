//
//  DetailViewController.m
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *lampImageView;
@property (weak, nonatomic) IBOutlet UILabel *divisionTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *divisionStatusLabel;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lampImageView.image = [UIImage imageNamed: self.status ? @"light_image_ON" : @"light_image_OFF"];
    self.divisionTextLabel.text = [NSString stringWithFormat: @"Your %@ light is", self.division];
    self.divisionStatusLabel.text = self.status ? @"ON" : @"OFF";
    self.navigationItem.title = self.division;
}


@end
