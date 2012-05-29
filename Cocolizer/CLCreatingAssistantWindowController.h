//
//  CLCreatingAssistantWindowController.h
//  Cocolizer
//
//  Created by lacie on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class CLDocument;
@protocol CLCreatingAssistantDelegate;

@interface CLCreatingAssistantWindowController : NSWindowController
{
    CLDocument *_newDocument;
    id<CLCreatingAssistantDelegate> _delegate;
}

@property(readonly) CLDocument *newDocument;


+ (CLCreatingAssistantWindowController *)assistantControllerForDocument:(CLDocument *)document withDelegate:(id<CLCreatingAssistantDelegate>)delegate;

- (id)initWithDocument:(CLDocument *)document delegate:(id<CLCreatingAssistantDelegate>)delegate;

#pragma mark Actions
- (IBAction)pushed:(id)sender;

@end
