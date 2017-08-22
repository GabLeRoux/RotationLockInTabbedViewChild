#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self resetNextOrientationMask];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.nextOrientationMask;
}

- (void)resetNextOrientationMask {
    self.nextOrientationMask = UIInterfaceOrientationMaskAllButUpsideDown;
}

@end
