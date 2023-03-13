//
//  AppDelegate.m
//  AppUsePrivacyPod
//
//  Created by wangzexin on 2023/3/7.
//

#import "AppDelegate.h"
#import <MyCocoaPodsTestProject/TestStaticLibrary.h>
#import <MyCocoaPodsLib2.h>
#import <CocoaPodsLib1.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    TestStaticLibrary* tsl = [[TestStaticLibrary alloc] init];
    NSString* tip = [tsl getSLTip];
    NSLog(@"tip: %@", tip);
    
    // 本地pod lib1
    CocoaPodsLib1* lib1 = [[CocoaPodsLib1 alloc] init];
    NSString *lib1Tip = [lib1 getTip];
    NSLog(@"lib1Tip: %@", lib1Tip);
    
    // 本地pod lib2
    MyCocoaPodsLib2 *lib2 = [[MyCocoaPodsLib2 alloc] init];
    NSString *lib2Tip = [lib2 getTip];
    NSLog(@"lib2Tip: %@", lib2Tip);
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
