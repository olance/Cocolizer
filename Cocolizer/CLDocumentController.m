//
//  CLDocumentController.m
//  Cocolizer
//
//  Created by lacie on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CLDocumentController.h"
#import "CLCreatingAssistantWindowController.h"

@implementation CLDocumentController

/*
 *  Override to present a creating assistant before actually displaying the document windows
 */
- (id)openUntitledDocumentAndDisplay:(BOOL)displayDocument error:(NSError **)outError
{
    id document = nil;
    
    // Create document with super without displaying it and call the creating assistant
    // if the newly created document should be displayed (and thus, configured)
    if((document = [super openUntitledDocumentAndDisplay:NO error:outError]) && displayDocument)
    {
        // TODO: maybe check that document really is a CLDocument?
        
        // Present the creating assistant for this document and act as a delegate
        CLCreatingAssistantWindowController *assistant = [[CLCreatingAssistantWindowController assistantControllerForDocument:document withDelegate:self] retain];
        [assistant showWindow:self];
    }
    
    return document;
}

#pragma mark CLCreatingAssistantDelegate methods
- (void)assistant:(CLCreatingAssistantWindowController *)assistant didEndForDocument:(NSDocument *)document withSuccess:(BOOL)success
{
    // Dispose of the assistant
    [assistant close];
    [assistant release];
    
    // When the creating processed ended with success, show the document's windows
    if(success)
    {
        [document makeWindowControllers];
        [document showWindows];
    }
}

@end
