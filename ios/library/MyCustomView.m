//
//  MyCustomView.m
//  testNativeView
//
//  Created by Yudi Edri Alviska on 26/11/21.
//

#import <React/RCTViewManager.h>
 
@interface RCT_EXTERN_MODULE(RCTMyCustomViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(status, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onClick, RCTBubblingEventBlock)
 
@end
