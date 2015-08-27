-- note:
-- This script won't pull nvalt to the current space because
-- applescript doesn't support working with spaces.
-- The only way to do that is to close nvalt and then reopen it.
-- nvalt opens fast, so that could work.
-- If I get frustrated by the spaces issue, I'll implement that.

on get_rand_str(len)
	set randomString to ""

	repeat with x from 1 to len
		set randomChar to ASCII character (random number from 48 to 57)
		set randomString to randomString & randomChar
	end repeat
	return randomString
end get_rand_str

on alfred_script(q)

  tell application "nvALT"
    search "scratch " & my get_rand_str(6)
    activate
  end tell

  -- for now I don't want the automatic enter.
  --delay 0.5 -- gotta delay to catch the text
  --tell application "System Events"
    --key code 36  --  36 is return, to go to the text area.
  --end tell

end alfred_script
