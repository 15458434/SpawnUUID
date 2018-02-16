//
//  ViewController.m
//  SpawnUUID
//
//  Created by Mark Cornelisse on 16/02/2018.
//  Copyright © 2018 Mark Cornelisse. All rights reserved.
//

#import "ViewController.h"
#import "UuidModel.h"

@interface ViewController ()

@property (unsafe_unretained) IBOutlet NSButton *generateNewUUIDButton;
@property (unsafe_unretained) IBOutlet NSButton *pushToPasteBoardButton;

@end

@implementation ViewController

- (IBAction)generateNewUUIDPressed:(NSButton *)sender {
    NSParameterAssert(sender == self.generateNewUUIDButton);
    [self.uuidController generateNewUuid];
}

- (IBAction)pushToPasteBoardPressed:(NSButton *)sender {
    NSParameterAssert(sender == _pushToPasteBoardButton);
    NSPasteboard *postItBoard = [NSPasteboard generalPasteboard];
    [postItBoard clearContents];
    [postItBoard setString:self.uuidController.uuidString forType:NSStringPboardType];
}

@end
