//
//  CLCreatingAssistantWindowController.m
//  Cocolizer
//
//  Created by lacie on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CLCreatingAssistantWindowController.h"
#import "CLDocument.h"
#import "CLCreatingAssistantDelegate.h"

@interface CLCreatingAssistantWindowController ()

@end

@implementation CLCreatingAssistantWindowController

@dynamic newDocument;

+ (CLCreatingAssistantWindowController *)assistantControllerForDocument:(CLDocument *)document withDelegate:(id<CLCreatingAssistantDelegate>)delegate
{
    return [[[self alloc] initWithDocument:document delegate:delegate] autorelease];
}

- (id)initWithDocument:(CLDocument *)document delegate:(id<CLCreatingAssistantDelegate>)delegate
{
    if((self = [super initWithWindowNibName:@"CLCreatingAssistantWindowController" owner:self]))
    {
        _newDocument = [document retain];
        _delegate = delegate;
    }
    
    return self;
}

- (void)dealloc
{
    [_newDocument release];
    [super dealloc];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


#pragma mark Actions

- (IBAction)pushed:(id)sender
{
    if(_delegate)
    {
        [_delegate assistant:self didEndForDocument:_newDocument withSuccess:YES];
    }
}


@end
