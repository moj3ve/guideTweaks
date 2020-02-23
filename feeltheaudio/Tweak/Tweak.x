#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>

%hook SBVolumeControl

- (void)increaseVolume {

	%orig;

	AudioServicesPlaySystemSound(1519);

}

- (void)decreaseVolume {

	%orig;

	AudioServicesPlaySystemSound(1519);

}

%end