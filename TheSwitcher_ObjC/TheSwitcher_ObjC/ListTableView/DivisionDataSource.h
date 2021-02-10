//
//  DivisionDataSource.h
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import <UIKit/UIKit.h>
#import "DivisionsCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface DivisionDataSource : NSObject <UITableViewDataSource>
@property NSArray* divisions;
- (id)initWith:(NSArray *)divisions;
@end

NS_ASSUME_NONNULL_END
