#import "customVC.h"

@implementation customVC
-(void)viewDidLoad{
UILabel *_label;
_label = [[UILabel alloc] initWithFrame: CGRectMake(0,100,320,100)];
_label.text = @"Niggers";
_label.textAlignment = UITextAlignmentCenter;
_label.textColor = [UIColor whiteColor];
_label.backgroundColor = [UIColor clearColor];
[self.view addSubview:_label];

}
-(void)viewWillEnterForeground{
NSLog(@"nigs");
}

- (void)loadView {
        self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
        self.view.backgroundColor = [UIColor redColor];
}

@end
