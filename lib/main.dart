import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  // The entry point of the Flutter app
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: const Color.fromARGB(255, 185, 51, 41),
        ),
        body: const DicePage(), // Loads our custom dice widget
      ),
    ),
  );
}

// DicePage is Stateful because dice values can change (dynamic content)
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // Variables to hold the current dice face numbers (1–6)
  int leftDiceFace = 1;
  int rightDiceFace = 1;

  // Function to randomly change dice faces
  void changeFace() {
    setState(() {
      // Random().nextInt(6) gives values 0–5, so we add +1 to make it 1–6
      leftDiceFace = Random().nextInt(6) + 1;
      rightDiceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Row → places dice side by side horizontally
      child: Row(
        children: [
          // First die (left)
          Expanded(
            // Expanded → makes each die take equal horizontal space
            child: Padding(
              padding: const EdgeInsets.all(16), // Adds space around the image
              child: GestureDetector(
                // GestureDetector → detects taps on the image
                onTap: () {
                  print('You tapped the left die');
                  changeFace(); // Update dice faces
                },
                // Image.asset → loads image from assets folder
                child: Image.asset('images/dice$leftDiceFace.png'),
              ),
            ),
          ),
          // Second die (right)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  print('You tapped the right die');
                  changeFace();
                },
                child: Image.asset('images/dice$rightDiceFace.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
