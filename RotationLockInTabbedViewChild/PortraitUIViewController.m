#import "PortraitUIViewController.h"

@implementation PortraitUIViewController

- (void)viewDidAppear:(BOOL)animated {
    [self forcePortraitOrientation];
    RootViewController *p = (RootViewController *)self.parentViewController;
    p.nextOrientationMask = UIInterfaceOrientationMaskPortrait;
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [((RootViewController *)self.parentViewController) resetNextOrientationMask];
    [super viewDidDisappear:animated];
}

- (void)forcePortraitOrientation {
    [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger: UIInterfaceOrientationPortrait] forKey:@"orientation"];
}

@end
