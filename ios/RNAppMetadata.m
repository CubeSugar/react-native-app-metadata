
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
    return [NSBundle mainBundle].infoDictionary;
}
@end
