//
//  UIImage+None.m
//  XAGMonitor
//
//  Created by zzy on 2021/6/3.
//  Copyright © 2021 qmy3. All rights reserved.
//

#import "UIImage+None.h"
#import "JYTool.h"
@implementation UIImage (None)
+(void)load{
    
    Method imageNamed = class_getClassMethod(self,@selector(imageNamed:));
    Method looha_ImageNamed =class_getClassMethod(self,@selector(looha_none_imageNamed:));
    method_exchangeImplementations(imageNamed, looha_ImageNamed);
   
}

+(instancetype)looha_none_imageNamed:(NSString*)name{
 
    if ([JYTool isEmpty:name]) {//判断是否为空的方法，不提供，自行搞定
        
      return  [self looha_none_imageNamed:name];
        
    }else{
        
        return nil;
    }
}
@end
