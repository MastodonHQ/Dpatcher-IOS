#import "RootViewController.h"
#import "customVC.h"

@implementation RootViewController


- (void)loadView {
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	self.view.backgroundColor = [UIColor blackColor];
}

- (void)buttonMethod:(id)sender{
	NSFileHandle *file;
	NSMutableData * edata;
	NSMutableData * sdata;
	NSMutableData * stdata;
	const char *exp = "\xFF";
	const char *statone = "\x0F";
	const char *stattwo = "\x27";
	edata = [NSMutableData dataWithBytes: exp length:strlen(exp)];
	sdata =[NSMutableData dataWithBytes:statone length:strlen(statone)];
	stdata =[NSMutableData dataWithBytes:stattwo length:strlen(stattwo)];
	file = [NSFileHandle fileHandleForUpdatingAtPath: @"/var/mobile/Documents/dpatcher/save0.dat"];
	if(file == nil){
		NSLog(@"Failed to Open file");
	}
	[file seekToFileOffset: 0x16];
	[file writeData: edata];
	[file seekToFileOffset: 0x4A];
	[file writeData: sdata];
	[file seekToFileOffset: 0x4B];
	[file writeData: stdata];
	[file closeFile];
	file = [NSFileHandle fileHandleForUpdatingAtPath: @"/var/mobile/Documents/dpatcher/save1.dat"];
	if( file == nil){
	NSLog(@"Failed to Open file");
	}
	[file seekToFileOffset: 0x16];
        [file writeData: edata];
        [file seekToFileOffset: 0x4A];
        [file writeData: sdata];
        [file seekToFileOffset: 0x4B];
        [file writeData: stdata];
        [file closeFile];
	file = [NSFileHandle fileHandleForUpdatingAtPath: @"/var/mobile/Documents/dpatcher/save2.dat"];
	if(file == nil){
		NSLog(@"Faile to Open File");
	}
	[file seekToFileOffset: 0x16];
        [file writeData: edata];
        [file seekToFileOffset: 0x4A];
        [file writeData: sdata];
        [file seekToFileOffset: 0x4B];
        [file writeData: stdata];
        [file closeFile];




}

-(id)init{
	UIImage* _image = [UIImage imageNamed:@"home.png"];
	UITabBarItem* _item = [[UITabBarItem alloc] initWithTitle:@"Home" image: _image tag:0];
	self.tabBarItem = _item;
[_item release];
return self;
}
-(id)tabme{
	UIImage* _image = [UIImage imageNamed:@"about.png"];
	UITabBarItem* _item = [[UITabBarItem alloc] initWithTitle:@"About" image:_image tag:1];
self.tabBarItem = _item;
[_item release];
return self;
}

- (void)viewDidLoad {
	UILabel *_label;
	_label = [[UILabel alloc] initWithFrame: CGRectMake(0,0,320,100)];
	_label.text = @"Dpatcher v3: IOS Edition";
	_label.textAlignment=UITextAlignmentCenter;
	_label.textColor = [UIColor whiteColor];
	_label.backgroundColor = [UIColor clearColor];
	[self.view addSubview:_label];
	UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	b.frame = CGRectMake(100,100,100,60);
	[b addTarget:self  action:@selector(buttonMethod:) forControlEvents:UIControlEventTouchUpInside ];
	[b setTitle:@"Patch all" forState:UIControlStateNormal];
	[self.view addSubview:b];
}
@end
