Force Paste.app
===============

Little AppleScript application for OS X which allows pasting text even when it’s not allowed (password dialogs etc). It uses virtual keyboard to type in the text from your clipboard. In other words, it tricks the program that asks for your input into thinking that you’re actually typing on your keyboard.

### Configuration (main.scpt)
- Make sure you have a keychain entry for the account name you specify in `getPW("mykeychainaccount")`
- Make sure you set the proper user in `keystroke "myUser"`
- Optionally uncomment `-- keystroke RETURN` so that it hits return for you.  If you have the wrong window focused, just as a google search or a chat, I warned you.

### Building
```
cd Force-Paste/
./build.sh
```

### Install
Drag to your dock and click whenever you have a user/pass field focused.
You will need to enter your keychain credentials the first time, but if you remember then it will save you from having to repeat your password.

### Copyrights
Icons by [Tango Project](http://tango.freedesktop.org/) and [Alexandre Moore](http://sa-ki.deviantart.com/).

License (for code): **WTFPL** ([Do What the Fuck You Want to](http://en.wikipedia.org/wiki/WTFPL)) or **MIT** if you like.
