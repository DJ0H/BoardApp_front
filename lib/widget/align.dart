import 'package:flutter/material.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                // alignment: Alignment.centerLeft,
                // child: Text("hello"),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
