//
//  UuidModel.m
//  SpawnUUID
//
//  Created by Mark Cornelisse on 16/02/2018.
//  Copyright © 2018 Mark Cornelisse. All rights reserved.
//

#import "UuidModel.h"

@implementation UuidModel

- (void)generateNewUuid {
    CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
    self.uuidString = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
}

@end
