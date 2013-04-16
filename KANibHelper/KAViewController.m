//
//  KAViewController.m
//  KANibHelper
//
//  Created by Alex on 01/04/13.
//

#import "KAViewController.h"


@implementation KAViewController

- (id) init
{
    NSString *nibName = NSStringFromClass([self class]);
    return [self initWithNibName:nibName bundle:nil];
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundleOrNil
{
    if(nibName){
        NSString *nibName4inches =  [nibName stringByAppendingString:@"~iphone4"];
        NSString *nibName3_5inches =  [nibName stringByAppendingString:@"~iphone3_5"];
        NSString *path4inches = [[NSBundle mainBundle] pathForResource:nibName4inches ofType:@"nib"];
        NSString *path3_5inches = [[NSBundle mainBundle] pathForResource:nibName3_5inches ofType:@"nib"];
        
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if(screenBounds.size.height == 568 && path4inches){
            self = [super initWithNibName:nibName4inches bundle:nibBundleOrNil];
        }else if(screenBounds.size.height == 480 && path3_5inches){
            self = [super initWithNibName:nibName3_5inches bundle:nibBundleOrNil];
        }else{
            self = [super initWithNibName:nibName bundle:nibBundleOrNil];
        }
    }else{
        self = [self init];
    }
    
    return self;
}

@end
