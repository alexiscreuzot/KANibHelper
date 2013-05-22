//
//  KAViewController.m
//  KANibHelper
//
// Copyright 2013 Alexis Creuzot
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
#define DEGREES_TO_RADIANS(x) (M_PI * x / 180.0)
#import "KAViewController.h"


@implementation KAViewController{    
    NSString *nibNameDefault;
    NSString *nibName4inches;
    NSString *nibName3_5inches;
    
    NSString *path4inches;
    NSString *path3_5inches;
}

- (id) init
{
    NSString *nibName = NSStringFromClass([self class]);
    return [self initWithNibName:nibName bundle:nil];
}

- (id) initWithBundle:(NSBundle *)nibBundleOrNil
{
    NSString *nibName = NSStringFromClass([self class]);
    return [self initWithNibName:nibName bundle:nibBundleOrNil];
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundleOrNil
{
    // Check if nibName exist
    if(!nibName){
        return [self initWithBundle:nibBundleOrNil];
    }
    
    // Names
    nibNameDefault = nibName;
    nibName4inches =  [nibName stringByAppendingString:@"~iphone4"];
    nibName3_5inches =  [nibName stringByAppendingString:@"~iphone3_5"];
    
    // paths
    path4inches = [[NSBundle mainBundle] pathForResource:nibName4inches ofType:@"nib"];
    path3_5inches = [[NSBundle mainBundle] pathForResource:nibName3_5inches ofType:@"nib"];
    
    return [super initWithNibName:[self detectNibToUse:nibNameDefault] bundle:nibBundleOrNil];
}

- (NSString*) detectNibToUse:(NSString*) nibName
{
    // Get screen bounds
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    // Fallback if no landscape
    if(screenBounds.size.height == 568 && path4inches){
        return nibName4inches;
    }else if(screenBounds.size.height == 480 && path3_5inches){
        return nibName3_5inches;
    }else{
        return nibName;
    }
}

@end
