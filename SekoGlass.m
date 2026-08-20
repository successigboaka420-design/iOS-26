#import "SekoGlass.h"

@implementation SekoGlassView

+ (instancetype)glassViewWithFrame:(CGRect)frame
{
    UIBlurEffect *effect =
        [UIBlurEffect effectWithStyle:
            UIBlurEffectStyleSystemChromeMaterial];

    SekoGlassView *view =
        [[self alloc] initWithEffect:effect];

    view.frame = frame;

    view.layer.cornerRadius = 22.0;
    view.layer.masksToBounds = YES;

    return view;
}

@end