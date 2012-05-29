//
//  CLDocumentController.h
//  Cocolizer
//
//  Created by lacie on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CLCreatingAssistantDelegate.h"

@interface CLDocumentController : NSDocumentController < CLCreatingAssistantDelegate >


- (void)assistant:(CLCreatingAssistantWindowController *)assistant didEndForDocument:(NSDocument *)document withSuccess:(BOOL)success;

@end
