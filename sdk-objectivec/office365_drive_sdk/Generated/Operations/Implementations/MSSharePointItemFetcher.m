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

#import "MSSharePointItemFetcher.h"


/**
* The implementation file for type MSSharePointItemFetcher.
*/


@implementation MSSharePointItemFetcher
-(MSSharePointItemOperations*) getOperations{
	return [[MSSharePointItemOperations alloc] initOperationWithUrl:self.UrlComponent Parent:self.Parent];
}

-(id)initWith:(NSString *)urlComponent :(id<MSSharePointODataReadable>)parent{
    
    self.Parent = parent;
    self.UrlComponent = urlComponent;
    return [super initWith:urlComponent :parent : [MSSharePointItem class]];
}

	
-(MSSharePointFileFetcher*) asFile{
	return [[MSSharePointFileFetcher alloc] initWith :self.UrlComponent :self.Parent :[MSSharePointFile class]];
}	
		
-(MSSharePointFolderFetcher*) asFolder{
	return [[MSSharePointFolderFetcher alloc] initWith :self.UrlComponent :self.Parent :[MSSharePointFolder class]];
}	
	
@end