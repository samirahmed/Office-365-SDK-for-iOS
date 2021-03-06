	
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

#import "MSDiscoveryODataOperations.h"

/**
* The implementation file for type MSDiscoveryODataOperations.
*/


#import "MSDiscoveryBaseODataContainerHelper.h"

@implementation MSDiscoveryODataOperations

-(id)initOperationWithUrl:(NSString *)urlComponent Parent:(id<MSDiscoveryODataReadable>)parent{
    self.UrlComponent = urlComponent;
    self.Parent = parent;
    return self;
}

-(NSURLSessionDataTask*)oDataExecute:(id<MSODataURL>)path : (NSData *)content : (MSHttpVerb)verb :(void (^)(id<MSResponse> ,NSError *error))callback{
    [path appendPathComponent:self.UrlComponent];
    [MSDiscoveryBaseODataContainerHelper addCustomParametersToODataURL:path :[self getCustomParameters]:[self getResolver]];
   
    return [self.Parent oDataExecute:path :content :verb :callback];
}

-(id<MSDependencyResolver>) getResolver{
    return [self.Parent getResolver];
}

@end
