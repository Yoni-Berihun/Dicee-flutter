
# Dicee Flutter App 🎲

A simple dice rolling app built with **Flutter**. Tap the dice to roll and get random numbers between 1 and 6. This project is perfect for beginners to learn **Stateful widgets**, **setState()**, **GestureDetector**, and **asset management** in Flutter.

---

## Features

- Roll two dice by tapping on them
- Random dice numbers from 1 to 6
- Dynamic image updates using string interpolation
- Clean and simple UI with padding and expanded widgets

---

## Screenshot of the project

![App Screenshot](image.png) 

---

## Getting Started

### Prerequisites

- Flutter installed ([Flutter Installation Guide](https://flutter.dev/docs/get-started/install))
- Android Studio or VS Code

### Running the App

1. Clone the repo:
   ```bash
   git clone https://github.com/Yoni-Berihun/dicee-flutter.git
   ```

2. Navigate into the project folder:

   ```bash
   cd dicee-flutter
   ```

3. Get dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```


## Project Structure

```
dicee-flutter/
├── images/           # Dice images (dice1.png, dice2.png, ..., dice6.png)
├── lib/
│   └── main.dart     # Main app code
├── pubspec.yaml      # Asset declarations & dependencies
└── README.md
```

---

## Key Concepts for Beginners

* **StatefulWidget**: Used for widgets that change over time. The dice values change when tapped, so we need a StatefulWidget.
* **setState()**: Notifies Flutter that the UI needs to be rebuilt with updated data.
* **GestureDetector**: Detects taps on images so the dice can act like buttons.
* **Expanded**: Makes dice share the available horizontal space equally.
* **Image.asset**: Loads images from the `images/` folder.
* **Random().nextInt(6) + 1**: Generates random numbers between 1 and 6, simulating dice rolls.

---

## License

This project is open source and free to use.
## Made With 😊 by @yoni-berihun





