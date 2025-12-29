const { app, BrowserWindow, Notification, ipcMain } = require('electron');
const path = require('path');

let win;

function createWindow() {
    win = new BrowserWindow({
        width: 300,
        height: 600,
        minWidth: 250,
        minHeight: 200,
        webPreferences: {
            nodeIntegration: true,
            contextIsolation: false,
        },
        resizable: true, // Allow resizing
        alwaysOnTop: true,
        title: 'Meeting Timer',
        vibrancy: 'under-window',
        visualEffectState: 'active',
        backgroundColor: '#00000000',
        titleBarStyle: 'hiddenInset',
    });

    win.loadFile('index.html');
}

app.whenReady().then(() => {
    createWindow();

    app.on('activate', () => {
        if (BrowserWindow.getAllWindows().length === 0) {
            createWindow();
        }
    });
});

// Handle window resizing from renderer
ipcMain.on('resize-window', (event, { width, height, animate }) => {
    if (win) {
        win.setSize(width, height, animate);
    }
});

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit();
    }
});
