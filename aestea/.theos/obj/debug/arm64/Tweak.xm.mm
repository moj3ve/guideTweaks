#line 1 "Tweak.xm"
#import "Creamy.h"


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

@class CCUIRoundButton; 
static void (*_logos_orig$_ungrouped$CCUIRoundButton$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CCUIRoundButton* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CCUIRoundButton$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CCUIRoundButton* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"


static void _logos_method$_ungrouped$CCUIRoundButton$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CCUIRoundButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

	_logos_orig$_ungrouped$CCUIRoundButton$layoutSubviews(self, _cmd);

	UIViewController *controller = [self _viewControllerForAncestor];

	if ([controller isKindOfClass:[CCUIConnectivityAirDropViewController]) {
		self.selectedStateBackgroundView.backgroundColor = [UIColor redColor];

	}

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIRoundButton = objc_getClass("CCUIRoundButton"); MSHookMessageEx(_logos_class$_ungrouped$CCUIRoundButton, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$CCUIRoundButton$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$CCUIRoundButton$layoutSubviews);} }
#line 19 "Tweak.xm"
