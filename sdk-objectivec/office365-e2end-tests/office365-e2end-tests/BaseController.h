/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * See License.txt in the project root for license information.
 ******************************************************************************/

#import <Foundation/Foundation.h>
#import <office365_odata_base/office365_odata_base.h>
#import <office365_exchange_sdk/MSOutlookClient.h>


@interface BaseController : NSObject

-(void)getMailClient : (void (^) (MSOutlookClient* ))callback;

@end
