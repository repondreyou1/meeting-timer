# Meeting Timer App - Implementation Plan

## Goal

Create a simple macOS application that allows the user to quickly set a 5 or 10-minute timer to remind them to join a Web meeting. This prevents getting distracted by other tasks during the waiting period.

## User Requirements

- **Platform**: macOS application.
- **Core Functionality**:
  - Quick buttons for "5 min" and "10 min".
  - Visual countdown.
  - Alarm/Notification when time is up.
- **Design**: Simple, easy to use, "Premium" aesthetics.

## Technology Stack

- **Runtime**: Electron (allows cross-platform, but targeting macOS).
- **Frontend**: HTML, Vanilla CSS, Vanilla JavaScript.
- **Styling**: Custom CSS with glassmorphism and vibrant colors.

## Architecture

- **Main Process (`main.js`)**:
  - Handles window creation.
  - Manages system notifications.
  - Handles "Always on Top" behavior (optional but recommended for a timer).
- **Renderer Process (`index.html`, `renderer.js`)**:
  - UI for the timer.
  - Countdown logic.
  - IPC communication with Main process.

## Step-by-Step Implementation

### Phase 1: Setup

1. Initialize `package.json` in `meeting-timer/`.
2. Install `electron`.
3. Create project structure (`main.js`, `index.html`, `styles.css`, `renderer.js`).

### Phase 2: Core Functionality

1. **UI Implementation**:
    - Create a clean, modern interface with two primary buttons: "5 Min" and "10 Min".
    - Add a display area for the countdown timer.
    - Add a "Stop/Reset" button.
2. **Timer Logic**:
    - Implement JavaScript `setInterval` for the countdown.
    - Update the UI every second.
3. **Notifications**:
    - Use HTML5 `Notification` API or Electron's native notification module to alert the user when time is up.
    - Play a sound (optional).

### Phase 3: Polish & Design

1. Apply "Premium" design guidelines:
    - Glassmorphism background.
    - Smooth transitions/animations for the timer.
    - Modern typography (Inter or system fonts).
2. Window Management:
    - Set window size to be small and compact.
    - (Optional) Make the window stay on top of other windows.

### Phase 4: Packaging (Optional for Dev)

- Verify the app runs with `npm start`.
