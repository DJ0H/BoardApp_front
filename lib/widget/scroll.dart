import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({super.key});

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: SingleChildScrollView(
        // ListView에는 기본적으로 scroll 기능이 있음
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.blue,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
