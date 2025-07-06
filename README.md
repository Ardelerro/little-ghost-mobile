# lil_ghost_mobile

A Flutter-based mobile app that allows users to control home appliances and set room temperature using both in-app UI and gesture-based controls. The app communicates with a Raspberry Pi server to update and retrieve current system settings.

---

## Features

- Set room temperature using slider or gesture input
- Enable/disable gesture control via switch
- View current temperature and light status
- Syncs in real-time with a Raspberry Pi server over HTTP

---

## Getting Started

### Prerequisites

- Flutter SDK installed
- Android device or emulator
- Raspberry Pi server running and accessible (with appropriate API)

### Install

```bash
git clone https://github.com/your-username/home-automation-app.git
cd home-automation-app
flutter pub get
```

Run on Android Device
- Enable Developer Mode and USB Debugging on your Android device
- Connect your phone via USB

Run the app:

```bash
flutter run
```

### Configuration
Update your server IP and port in:

```bash
lib/utils/constants.dart
const String baseUrl = 'http://<RASPBERRY_PI_IP>:<PORT>';
```
