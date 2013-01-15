Modified Programmer Dvorak Layout
---------------------------------

It is the same as [Programmer Dvorak](http://www.kaufmann.no/roland/dvorak/) except the `<Escape>` and `<Caps_Lock>` is exchanged.

Usage
-----

Copy dvp.map to keymaps directory.


Tips
----

1. Keymaps directory

        Gentoo:    /usr/share/keymaps/i386/dvorak
        ArchLinux: /usr/share/kbd/keymaps/i386/dvorak

2. Load Keymap

        loadkeys dvp

3. Gentoo Keymap Configure

        File: /etc/conf.d/keymaps
        Code: keymap="dvp"

4. Xorg keymap setting

        It won't use dvp.map, just a remark.
        Keymap: /usr/share/X11/xkb/symbols/us
        Rules:  /usr/share/X11/xkb/rules/xorg.lst

        File: /etc/X11/[Your Keyboard Configure File]
        Code:

            Section "InputClass"
                Identifier "Keyboard"
                MatchIsKeyboard "on"
                MatchDevicePath "/dev/input/event*"
                Driver "evdev"
                Option "XkbLayout" "us"
                Option "XkbVariant" "dvp"
                Option "XkbOptions" "caps:swapescape"
            EndSection
