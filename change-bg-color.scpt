#!/usr/bin/osascript

on run argv
   set red to (item 1 of argv) * 16 * 16
   set green to (item 2 of argv) * 16 * 16
   set blue to (item 3 of argv) * 16 * 16

   tell application "Terminal"
      set background color of window 1 to {red, green, blue}
   end tell
end run