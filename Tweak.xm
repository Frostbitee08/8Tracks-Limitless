%hook BaseViewController

//Disable Ads
-(void)setAdUnit:(id)arg1 {
	//Do Nothing;
}

%end

%hook MixPlayer

//Disable skip limit
-(void)setSkipAllowed:(BOOL)arg1 {
	if (arg1 == TRUE) {
		%orig;
	}
}

//Disable skip limit error message
-(void)postError:(id)arg1 {
	if ([(NSString *)arg1 rangeOfString:@"limit"].location == NSNotFound) {
	    %orig;
	}
}

%end