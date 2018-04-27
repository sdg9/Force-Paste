set numbers_key_codes to {82, 83, 84, 85, 86, 87, 88, 89, 91, 92}

set input to do shell script "pbpaste"

set pass to getPW("mykeychainaccount") -- update me

on getPW(keychainItemName)
	do shell script "security 2>&1 >/dev/null find-generic-password -gl " & quoted form of keychainItemName & " | awk '{print $2}'"
	return (text 2 thru -2 of result)
end getPW

if (input is not missing value and length of input is less than 250) then
	tell application "System Events"
		keystroke "myUser" -- update me
		keystroke TAB
		keystroke pass
		-- keystroke RETURN  -- use at your own risk
	end tell
end if
