//
//  EduMessageHandle.m
//  EduSDK
//
//  Created by SRS on 2020/7/22.
//  Copyright © 2020 agora. All rights reserved.
//

#import "EduMessageHandle.h"
#import "AgoraLogManager+Quick.h"

@implementation EduMessageHandle

- (void)dealloc {
    [NSNotificationCenter.defaultCenter removeObserver:self];
    NSString *classStr = NSStringFromClass(self.class);
    [AgoraLogManager logMessageWithDescribe:@"EduMessageHandle dealloc:" message:@{@"ClassType":classStr, @"roomUuid":self.roomUuid == nil ? @"nil" : self.roomUuid}];
}

@end
