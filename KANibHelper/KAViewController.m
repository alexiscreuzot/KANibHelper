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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if(nibNameOrNil){
        NSString *nibName4inches =  [nibNameOrNil stringByAppendingString:@"_4in"];
        NSString *path4inches = [[NSBundle mainBundle] pathForResource:nibName4inches ofType:@"nib"];
        
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if(screenBounds.size.height == 568 && path4inches){
            self = [super initWithNibName:nibName4inches bundle:nibBundleOrNil];
        }else{
            self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        }
    }else{
        self = [self init];
    }
    
    return self;
}

@end
