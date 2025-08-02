OS: Arch
WM: niri
Notifications: mako
Launcher: fuzzel

## Bluetooth Auto-Connection

### Glove80 Keyboard Setup

The Glove80 keyboard (Device E7:CF:4F:A2:E4:85) is configured to automatically connect whenever available using:

1. **User systemd service** (`~/.config/systemd/user/bluetooth-glove80.service`)
   - Attempts to connect to the keyboard
   - Restarts on failure with 10-second delay

2. **Timer service** (`~/.config/systemd/user/bluetooth-glove80.timer`)
   - Runs 30 seconds after boot
   - Checks connection every 30 seconds

3. **Optional udev rule** (`~/99-glove80-bluetooth.rules`)
   - Triggers connection when Bluetooth becomes available
   - Install with: `sudo cp ~/99-glove80-bluetooth.rules /etc/udev/rules.d/`

To check service status:
```bash
systemctl --user status bluetooth-glove80.timer
```

To manually trigger connection:
```bash
bluetoothctl connect E7:CF:4F:A2:E4:85
```
