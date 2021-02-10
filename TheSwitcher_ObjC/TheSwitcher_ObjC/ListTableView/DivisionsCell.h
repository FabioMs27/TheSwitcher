//
//  DivisionsTableViewCell.h
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DivisionsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *divisionLabel;
@property (weak, nonatomic) IBOutlet UISwitch *lightSwitch;
@end

NS_ASSUME_NONNULL_END
