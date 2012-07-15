#import "RootViewController.h"
#import "customVC.h"
#import "customDel.h"
@interface dpatcherApplication: UIApplication <UIApplicationDelegate,UITabBarControllerDelegate> {
	UIWindow *_window;
	RootViewController *_viewController;
}
@property (nonatomic, retain) UIWindow *window;
@end


@implementation dpatcherApplication
@synthesize window = _window;
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	UIView *_tabtwo = [[UIView alloc] initWithFrame: CGRectMake(0,0,320,320)];
	UITabBarController *_tabBarController;
	customDel * delegate = [[customDel alloc] init];
	_tabBarController = [[UITabBarController alloc] init];
	RootViewController *tb1 = [[RootViewController alloc] init];
	customVC *tb2 = [[RootViewController alloc] tabme];
	tb2.view = _tabtwo;
	UILabel *_mylabel= [[UILabel alloc] initWithFrame: CGRectMake(0,0,320,100)];
	UITextView *_myview = [[UITextView alloc] initWithFrame: CGRectMake(0,50,320,200)];
	_myview.text=@"Coded By: Aquertu aka Keldor aka Celtrix :D\n Simply Place your save.dats in /var/mobile/Documents/dpatcher/ and launch the app press patch all and your done! Enjoy :D\n";
	_myview.textColor = [UIColor whiteColor];
	_myview.backgroundColor = [UIColor clearColor];
	_mylabel.text = @"About Dpatcher";
	_mylabel.textColor = [UIColor whiteColor];
	_mylabel.backgroundColor = [UIColor clearColor];
	_mylabel.textAlignment = UITextAlignmentCenter;
	[tb2.view addSubview:_mylabel];
	[tb2.view addSubview:_myview];
	NSArray* controllers = [NSArray arrayWithObjects:tb1,tb2, nil];
	//_tabBarController.viewControllers = controllers;
	[_tabBarController setViewControllers:controllers animated:YES];
   	[_tabBarController setDelegate:delegate];
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[_window addSubview:_viewController.view];
	[_window addSubview: _tabBarController.view];
	[_window makeKeyAndVisible];
}

- (void)dealloc {
	[_window release];
	[super dealloc];
}
@end

// vim:ft=objc
