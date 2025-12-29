# Meeting Timer

A simple and elegant timer application to help you never be late for web meetings.

## Features

- **Quick Timers**: Start 5 or 10-minute countdowns with one click
- **Custom Timer**: Set any duration in minutes
- **Meeting Alarm**: Set an alarm for 5 minutes before your meeting starts
- **Pause/Resume**: Pause and resume timers as needed
- **Visual & Audio Alerts**: Screen flashing and beep sounds when time is up
- **Compact Mode**: Window automatically shrinks during countdown to minimize distraction

## Platforms

- **macOS**: Native desktop application with glassmorphism design
- **Android**: Mobile application optimized for smartphones

## Installation

### macOS

1. Download `Meeting Timer-1.0.0-arm64.dmg` from the releases
2. Open the DMG file
3. Drag the app to your Applications folder
4. Right-click and select "Open" on first launch (due to unsigned app)

### Android

1. Download `app-debug.apk` from the releases
2. Enable "Install from Unknown Sources" in your Android settings
3. Install the APK file

## Usage

### Quick Timer

- Click "5 Min" or "10 Min" to start a countdown
- The window will shrink to compact mode showing only the timer and control buttons

### Custom Timer

- Enter the number of minutes in the input field
- Click "Start Custom Timer"

### Meeting Alarm

- Enter your meeting start time (defaults to current time)
- Click "Set Pre Alarm"
- An alarm will trigger 5 minutes before the meeting time

### Controls

- **Pause**: Pause the current timer
- **Resume**: Resume a paused timer
- **Stop/Reset**: Stop the timer and reset to default view

## Development

### macOS Version

Built with Electron

```bash
cd meeting-timer
npm install
npm start  # Development
npm run build  # Build DMG
```

### Android Version

Built with Capacitor

```bash
cd meeting-timer-mobile
npm install
npx cap sync
npx cap open android  # Open in Android Studio
```

## Technologies

- **Frontend**: HTML, CSS, JavaScript
- **macOS**: Electron
- **Android**: Capacitor
- **Audio**: Web Audio API
- **Notifications**: Native notification APIs

## License

MIT License
