/*******************************************************************************
 * Copyright (c) Microsoft Open Technologies, Inc.
 * All Rights Reserved
 * Licensed under the Apache License, Version 2.0.
 * See License.txt in the project root for license information.
 *
 * Warning: This code was generated automatically. Edits will be overwritten.
 * To make changes to this code, please make changes to the generation framework itself:
 * https://github.com/MSOpenTech/odata-codegen
 *******************************************************************************/

#import "MSDiscoveryServiceInfoFetcher.h"


/**
* The implementation file for type MSDiscoveryServiceInfoFetcher.
*/


@implementation MSDiscoveryServiceInfoFetcher
-(MSDiscoveryServiceInfoOperations*) getOperations{
	return [[MSDiscoveryServiceInfoOperations alloc] initOperationWithUrl:self.UrlComponent Parent:self.Parent];
}

-(id)initWith:(NSString *)urlComponent :(id<MSDiscoveryODataReadable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWith:urlComponent :parent : [MSDiscoveryServiceInfo class]];
}


@end