//
//  NSSTring.m
//  TheSwitcher_Objc
//
//  Created by Fábio Maciel de Sousa on 13/02/21.
//

#import "Formatting.h"

@implementation NSString (Formatting)

- (NSString *)formattedDivision {
    return [NSString stringWithFormat: @"Your %@ light is", self];
}

@end
