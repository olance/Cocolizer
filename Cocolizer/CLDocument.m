//
//  CLDocument.m
//  Cocolizer
//
//  Created by Olivier Lance on 28/05/12.
//

#import "CLDocument.h"

@implementation CLDocument

- (id)init
{
    if((self = [super init]))
    {
        
    }
    
    return self;
}

- (NSString *)windowNibName
{
    return @"CLDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
