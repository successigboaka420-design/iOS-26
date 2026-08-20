#import <Preferences/PSListController.h>

@interface SekoRootListController : PSListController
@end

@implementation SekoRootListController

- (NSArray *)specifiers
{
    if (!_specifiers)
    {
        _specifiers =
            [self loadSpecifiersFromPlistName:@"Root"
                                      target:self];
    }

    return _specifiers;
}

@end