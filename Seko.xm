#import <UIKit/UIKit.h>

static BOOL SekoEnabled = YES;

%hook UINavigationBar

- (void)didMoveToWindow {
    %orig;

    if (!SekoEnabled)
        return;

    if (@available(iOS 13.0, *)) {
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];

        appearance.backgroundEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleSystemChromeMaterial];
        appearance.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.035];
        appearance.shadowColor = [UIColor clearColor];

        self.standardAppearance = appearance;
        self.scrollEdgeAppearance = appearance;

        if (@available(iOS 15.0, *)) {
            self.compactAppearance = appearance;
        }
    }
}

%end