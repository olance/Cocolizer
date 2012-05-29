//
//  CLCreatingAssistantDelegate.h
//  Cocolizer
//
//  Created by lacie on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLCreatingAssistantWindowController;

@protocol CLCreatingAssistantDelegate <NSObject>

- (void)assistant:(CLCreatingAssistantWindowController *)assistant didEndForDocument:(NSDocument *)document withSuccess:(BOOL)success;

@end
