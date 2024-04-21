import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () => print("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  backgroundColor: Colors.amber,
                ),
                child: const Text("Elevated Button"),
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: () => print("Text Button"),
                  child: const Text("Text Button")),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("Outlined Button"),
                child: const Text("Outlined Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
