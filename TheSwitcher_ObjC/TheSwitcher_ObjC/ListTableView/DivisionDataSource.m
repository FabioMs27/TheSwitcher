//
//  DivisionDataSource.m
//  TheSwitcher_ObjC
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

#import "DivisionDataSource.h"

@implementation DivisionDataSource

- (id)initWith:(NSArray *)divisions {
    self.divisions = divisions;
    return self;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    DivisionsCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DivisionsCell"];
    cell.divisionLabel.text = self.divisions[[indexPath row]];
    return cell ? cell : [UITableViewCell init];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.divisions count];
}

@end
