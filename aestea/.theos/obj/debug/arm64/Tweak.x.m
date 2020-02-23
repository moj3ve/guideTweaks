#line 1 "Tweak.x"
#import "Aestea.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CCUIRoundButton; @class SBIconController; @class CCUIConnectivityAirDropViewController; @class CCUIConnectivityHotspotViewController; @class CCUIConnectivityAirplaneViewController; @class CCUIConnectivityWifiViewController; @class CCUIConnectivityCellularDataViewController; @class CCUIConnectivityBluetoothViewController; 

static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CCUIConnectivityHotspotViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CCUIConnectivityHotspotViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CCUIConnectivityAirplaneViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CCUIConnectivityAirplaneViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CCUIConnectivityCellularDataViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CCUIConnectivityCellularDataViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CCUIConnectivityBluetoothViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CCUIConnectivityBluetoothViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CCUIConnectivityWifiViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CCUIConnectivityWifiViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CCUIConnectivityAirDropViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CCUIConnectivityAirDropViewController"); } return _klass; }
#line 3 "Tweak.x"
static void (*_logos_orig$Aestea$CCUIRoundButton$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CCUIRoundButton* _LOGOS_SELF_CONST, SEL); static void _logos_method$Aestea$CCUIRoundButton$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CCUIRoundButton* _LOGOS_SELF_CONST, SEL); 



static void _logos_method$Aestea$CCUIRoundButton$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CCUIRoundButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

	_logos_orig$Aestea$CCUIRoundButton$layoutSubviews(self, _cmd);

	if (enabled) {
		ancestor = [self _viewControllerForAncestor];
		
		NSDictionary* preferencesDictionary = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/sh.litten.aesteapreferences.plist"];

		if ([ancestor isKindOfClass: _logos_static_class_lookup$CCUIConnectivityAirplaneViewController()]) {
			NSString* colorString = [preferencesDictionary objectForKey: @"airplaneColor"];
			UIColor* color = [SparkColourPickerUtils colourWithString: colorString withFallback: @"#147efb"];

			self.selectedStateBackgroundView.backgroundColor = color;

		}

		if ([ancestor isKindOfClass: _logos_static_class_lookup$CCUIConnectivityCellularDataViewController()]) {
			NSString* colorString = [preferencesDictionary objectForKey: @"cellularColor"];
			UIColor* color = [SparkColourPickerUtils colourWithString: colorString withFallback: @"#147efb"];

			self.selectedStateBackgroundView.backgroundColor = color;

		}

		if ([ancestor isKindOfClass: _logos_static_class_lookup$CCUIConnectivityWifiViewController()]) {
			NSString* colorString = [preferencesDictionary objectForKey: @"wifiColor"];
			UIColor* color = [SparkColourPickerUtils colourWithString: colorString withFallback: @"#147efb"];

			self.selectedStateBackgroundView.backgroundColor = color;

		}

		if ([ancestor isKindOfClass: _logos_static_class_lookup$CCUIConnectivityBluetoothViewController()]) {
			NSString* colorString = [preferencesDictionary objectForKey: @"bluetoothColor"];
			UIColor* color = [SparkColourPickerUtils colourWithString: colorString withFallback: @"#147efb"];

			self.selectedStateBackgroundView.backgroundColor = color;

		}

		if ([ancestor isKindOfClass: _logos_static_class_lookup$CCUIConnectivityAirDropViewController()]) {
			NSString* colorString = [preferencesDictionary objectForKey: @"airdropColor"];
			UIColor* color = [SparkColourPickerUtils colourWithString: colorString withFallback: @"#147efb"];

			self.selectedStateBackgroundView.backgroundColor = color;

		}

		if ([ancestor isKindOfClass: _logos_static_class_lookup$CCUIConnectivityHotspotViewController()]) {
			NSString* colorString = [preferencesDictionary objectForKey: @"hotspotColor"];
			UIColor* color = [SparkColourPickerUtils colourWithString: colorString withFallback: @"#147efb"];

			self.selectedStateBackgroundView.backgroundColor = color;

		}

	}

}





    
static void (*_logos_orig$AesteaIntegrityFail$SBIconController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$AesteaIntegrityFail$SBIconController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, BOOL); 



static void _logos_method$AesteaIntegrityFail$SBIconController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL animated) {

    _logos_orig$AesteaIntegrityFail$SBIconController$viewDidAppear$(self, _cmd, animated); 
    if (!dpkgInvalid) return;
		UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Aestea"
		message:@"Seriously? Pirating a free Tweak is awful!\nPiracy repo's Tweaks could contain Malware if you didn't know that, so go ahead and get Aestea from the official Source https://repo.litten.sh/.\nIf you're seeing this but you got it from the official source then make sure to add https://repo.litten.sh to Cydia or Sileo."
		preferredStyle:UIAlertControllerStyleAlert];

		UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Aww man" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {

			UIApplication *application = [UIApplication sharedApplication];
			[application openURL:[NSURL URLWithString:@"https://repo.litten.sh/"] options:@{} completionHandler:nil];

	}];

		[alertController addAction:cancelAction];

		[self presentViewController:alertController animated:YES completion:nil];

}





static __attribute__((constructor)) void _logosLocalCtor_aa54f3a0(int __unused argc, char __unused **argv, char __unused **envp) {

    if (![NSProcessInfo processInfo]) return;
    NSString *processName = [NSProcessInfo processInfo].processName;
    bool isSpringboard = [@"SpringBoard" isEqualToString:processName];

    
    
    bool shouldLoad = NO;
    NSArray *args = [[NSClassFromString(@"NSProcessInfo") processInfo] arguments];
    NSUInteger count = args.count;
    if (count != 0) {
        NSString *executablePath = args[0];
        if (executablePath) {
            NSString *processName = [executablePath lastPathComponent];
            BOOL isApplication = [executablePath rangeOfString:@"/Application/"].location != NSNotFound || [executablePath rangeOfString:@"/Applications/"].location != NSNotFound;
            BOOL isFileProvider = [[processName lowercaseString] rangeOfString:@"fileprovider"].location != NSNotFound;
            BOOL skip = [processName isEqualToString:@"AdSheet"]
                        || [processName isEqualToString:@"CoreAuthUI"]
                        || [processName isEqualToString:@"InCallService"]
                        || [processName isEqualToString:@"MessagesNotificationViewService"]
                        || [executablePath rangeOfString:@".appex/"].location != NSNotFound;
            if ((!isFileProvider && isApplication && !skip) || isSpringboard) {
                shouldLoad = YES;
            }
        }
    }

    if (!shouldLoad) return;
  
    
    dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/sh.litten.aestea.list"];

    if (!dpkgInvalid) dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/sh.litten.aestea.md5sums"];

    if (dpkgInvalid) {
        {Class _logos_class$AesteaIntegrityFail$SBIconController = objc_getClass("SBIconController"); MSHookMessageEx(_logos_class$AesteaIntegrityFail$SBIconController, @selector(viewDidAppear:), (IMP)&_logos_method$AesteaIntegrityFail$SBIconController$viewDidAppear$, (IMP*)&_logos_orig$AesteaIntegrityFail$SBIconController$viewDidAppear$);}
        return;
    }

	pfs = [[HBPreferences alloc] initWithIdentifier:@"sh.litten.aesteapreferences"];

    [pfs registerBool:&enabled default:YES forKey:@"Enabled"];

	[pfs registerObject:&airplaneColorValue default:@"147efb" forKey:@"airplaneColor"];
	[pfs registerObject:&cellularColorValue default:@"147efb" forKey:@"cellularColor"];
	[pfs registerObject:&wifiColorValue default:@"147efb" forKey:@"wifiColor"];
	[pfs registerObject:&bluetoothColorValue default:@"147efb" forKey:@"bluetoothColor"];
	[pfs registerObject:&airdropColorValue default:@"147efb" forKey:@"airdropColor"];
	[pfs registerObject:&hotspotColorValue default:@"147efb" forKey:@"hotspotColor"];

	if (!dpkgInvalid && enabled) {
        BOOL ok = false;
        
        ok = ([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"/var/lib/dpkg/info/%@%@%@%@%@%@%@%@%@.aestea.md5sums", @"s", @"h", @".", @"l", @"i", @"t", @"t", @"e", @"n"]]
        );

        if (ok && [@"litten" isEqualToString:@"litten"]) {
            {Class _logos_class$Aestea$CCUIRoundButton = objc_getClass("CCUIRoundButton"); MSHookMessageEx(_logos_class$Aestea$CCUIRoundButton, @selector(layoutSubviews), (IMP)&_logos_method$Aestea$CCUIRoundButton$layoutSubviews, (IMP*)&_logos_orig$Aestea$CCUIRoundButton$layoutSubviews);}
            return;
        } else {
            dpkgInvalid = YES;
        }
    }
}
