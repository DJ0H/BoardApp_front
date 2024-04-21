import 'package:flutter/material.dart';

class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({super.key});

  @override
  State<FlexibleWidget> createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1, // 화면에서 차지하는 비율
              // fit: FlexFit.tight, // 가로 공간을 많이 차지함-> Expanded랑 동일한 효과
              child: Container(
                // height: 150,
                color: Colors.blue,
              ),
            ),
            Flexible(
              flex: 3, // 화면에서 차지하는 비율
              child: Container(
                // height: 150,
                color: Colors.green,
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width / 2,
            //   height: 150,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: MediaQuery.of(context).size.width / 2,
            //   height: 150,
            //   color: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }
}
