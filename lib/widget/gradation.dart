import 'package:flutter/material.dart';

class GradationWidget extends StatefulWidget {
  const GradationWidget({super.key});

  @override
  State<GradationWidget> createState() => _GradationWidgetState();
}

class _GradationWidgetState extends State<GradationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.blue[100] as Color,
                Colors.blue[300] as Color,
                Colors.blue[500] as Color,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 0.4, 0.9]),
        ),
      ),
    );
  }
}
