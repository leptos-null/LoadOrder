//
//  LSAppDelegate.m
//  loadorder
//
//  Created by Leptos on 8/23/18.
//  Copyright © 2018 Leptos. All rights reserved.
//

#import "LSAppDelegate.h"
#import "../LSPutMethodSignature.h"

@implementation LSAppDelegate

+ (void)load {
    putObjCMethodSignature();
}

+ (void)initialize {
    putObjCMethodSignature();
}

@end
