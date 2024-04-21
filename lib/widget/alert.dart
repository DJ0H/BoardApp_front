import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext con) {
                  return AlertDialog(
                    title: const Text("Dialog Title"),
                    content: Container(
                      child: const Text("Dialog Content"),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.of(context)
                              .pop(), // Navigator: 이동, pop: 이전 경로
                          child: const Text("yes")),
                      TextButton(
                          onPressed: () => Navigator.of(context)
                              .pop(), // Navigator: 이동, pop: 이전 경로
                          child: const Text("close"))
                    ],
                  );
                },
              );
            },
            child: const Text("Button"),
          ),
        ),
      ),
    );
  }
}
