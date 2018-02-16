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

@end

@implementation ViewController

- (IBAction)generateNewUUIDPressed:(NSButton *)sender {
    NSParameterAssert(sender == self.generateNewUUIDButton);
    [self.uuidController generateNewUuid];
}

@end
