
#import "RNAppMetadata.h"
#if __has_include("RCTBridge.h")
#import "RCTBridge.h"
#else
#import <React/RCTBridge.h>
#endif

@implementation RNAppMetadata

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (NSDictionary *)constantsToExport {
    NSString *iosVersion = [[UIDevice currentDevice] systemVersion];
    NSString *infoDeviceName = [[UIDevice currentDevice] name];

    return @{
        @"Version": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"],
        @"ShortVersion": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"],
        @"BundleIdentifier": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"],
        @"BundleName": [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"],
    };
}

RCT_REMAP_METHOD(getAppMetadataBy,
        key: (NSString*)key
   resolver: (RCTPromiseResolveBlock)resolve
   rejecter: (RCTPromiseRejectBlock) reject) {
    NSString* value = nil;
    value = [[NSBundle mainBundle] objectForInfoDictionaryKey: key];
    if (value) {
        resolve(value);
    } else {
        NSError *err = [NSError errorWithDomain:@"RNAppMetadata"
                                           code:1
                                       userInfo:@{
                      NSLocalizedDescriptionKey:@"There is no such key"
                                       }];
        reject(@"key_not_found", @"There is no such key", err);
    }
}
@end
  
