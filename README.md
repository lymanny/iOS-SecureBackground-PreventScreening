
# iOS-SecureBackgroundPreventScreenRecording 🚀

## Overview 📚
This project demonstrates how to protect sensitive content in an iOS app by implementing two key features: **Securing the Background** and **Preventing Screen Recording**. The app ensures that sensitive data is hidden both when it goes into the background and when screen recording is detected.

## Key Features 🔑
1. **Secure Background**: Automatically shows a protective screen when the app moves to the background, ensuring that sensitive content is hidden during app switching.
2. **Prevent Screen Recording**: Detects when the screen is being recorded and covers the app’s content with a protective view to prevent unauthorized recordings.

## Functionality Breakdown ⚙️

### Secure Background 🛡️
- The app listens for lifecycle notifications using `UIApplication` methods:
  - `applicationWillResignActive`: Shows a protective screen when the app is about to go into the background.
  - `applicationDidBecomeActive`: Removes the protective screen when the app comes back to the foreground.
- A white screen is presented to cover sensitive information whenever the app goes into the background.

![Secure Background](https://github.com/user-attachments/assets/325bc842-68e5-4f99-ae41-cef217d0298c)

---

### Prevent Screen Recording 🎥
- Continuously monitors for screen recording using the `UIScreen.isCaptured` property.
- Uses `UIScreen.capturedDidChangeNotification` to detect when screen recording starts or stops.
- If screen recording is detected, a white screen is presented to hide the app’s content.
- The protective screen is removed once screen recording stops.

![Prevent Screen Recording](https://github.com/user-attachments/assets/3c40e8c6-e108-4c0d-b862-083efd65f6b2)

---

## Usage 🛠️
### Prerequisites
- iOS 14.0+
- Xcode 12.0+
- Swift 5.0+

### Installation
1. **Clone the repository**:
    ```bash
    git clone https://github.com/lymanny/iOS-SecureBackground-PreventScreening.git
    ```
2. Open the project in Xcode.
3. Run the project on an iOS simulator or a physical device.

### Running the Project
- **Secure Background**: Test by switching the app to the background or opening the app switcher. The app will show a white screen to hide sensitive content.
- **Prevent Screen Recording**: Start a screen recording on your device while the app is running. The app will automatically hide its content to prevent unauthorized recording.

## Contributing 🤝
Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests.

## License 📄
This project is licensed under the [MIT License](LICENSE).

## Author 👩‍💻
lymanny - iOS Developer  
🌐 [Portfolio](https://lymanny.onrender.com)

