//
//  DetailViewController.h
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *lampImageView;
@property (weak, nonatomic) IBOutlet UILabel *divisionTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *divisionStatusLabel;
@end

NS_ASSUME_NONNULL_END
