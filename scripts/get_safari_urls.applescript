tell application "Safari"
	set windowList to every window
	set urlList to {}
	repeat with aWindow in windowList
		set tabList to every tab in aWindow
		repeat with aTab in tabList
			set end of urlList to URL of aTab
		end repeat
	end repeat
	return urlList
end tell
