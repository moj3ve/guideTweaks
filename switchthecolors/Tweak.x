#import <UIKit/UIKit.h>

%hook UISwitch

- (void)layoutSubviews {

	%orig;
	[self setOnTintColor: [UIColor redColor]];
	
}

%end