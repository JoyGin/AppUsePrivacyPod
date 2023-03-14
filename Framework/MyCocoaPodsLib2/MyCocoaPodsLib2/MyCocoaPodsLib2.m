#import "MyCocoaPodsLib2.h"
#import <CocoaPodsLib3.h>

@implementation MyCocoaPodsLib2

- (NSString *)getTip
{
//    return @"MyCocoaPodsLib2 getTip";
//    NSString *tipLib1 = [[[CocoaPodsLib1 alloc] init] getTip];
    NSString *tipLib3 = [[[CocoaPodsLib3 alloc] init] getTip];
    return tipLib3;
}

@end
