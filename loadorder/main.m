//
//  main.m
//  loadorder
//
//  Created by Leptos on 8/23/18.
//  Copyright © 2018 Leptos. All rights reserved.
//

#import "LSAppDelegate.h"
#import "../loadorderframework/LSFrameworkClass.h"

__attribute__((constructor)) static void appConstructor() {
    puts(__PRETTY_FUNCTION__);
}

int main(int argc, char *argv[]) {
    puts(__PRETTY_FUNCTION__);
    [LSFrameworkClass exampleCallMeFromMain];
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([LSAppDelegate class]));
    }
}
