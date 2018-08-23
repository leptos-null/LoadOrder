//
//  LSFrameworkClass.m
//  loadorderframework
//
//  Created by Leptos on 8/23/18.
//  Copyright © 2018 Leptos. All rights reserved.
//

#import "LSFrameworkClass.h"

#import "../LSPutMethodSignature.h"

@implementation LSFrameworkClass

+ (void)load {
    putObjCMethodSignature();
}

+ (void)initialize {
    putObjCMethodSignature();
}

+ (void)exampleCallMeFromMain {
    putObjCMethodSignature();
}

@end
