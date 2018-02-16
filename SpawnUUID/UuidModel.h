//
//  UuidModel.h
//  SpawnUUID
//
//  Created by Mark Cornelisse on 16/02/2018.
//  Copyright © 2018 Mark Cornelisse. All rights reserved.
//

@import Foundation;

@interface UuidModel : NSObject

@property (nonatomic, strong) NSString *uuidString;

- (void)generateNewUuid;

@end
