import 'package:board_project/widget/second.dart';
import 'package:flutter/material.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
              // 스크린 적재
              context,
              // MaterialPageRoute(
              //   builder: (context) => const SecondView(),
              // )),
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => SecondView(),
                // transitionDuration:
                //     Duration(milliseconds: 0), // 전환 애니메이션 지속 시간을 0으로 설정
              )),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text("Get Started"),
          ),
        ),
      ),
    );
  }
}
