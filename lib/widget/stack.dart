import 'package:flutter/material.dart';

// stack
// row, column
// textButton, GestureDetector, floatingButton
class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
        // backgroundColor: Colors.blue,
        // centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Header Part"),
            ),
            ListTile(
              title: Text("Menu 1"),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.yellow, // 배경색
        alignment: Alignment.topLeft,
        child: Stack(// 겹치게
            children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // 세로축 정렬
            // crossAxisAlignment: CrossAxisAlignment.center, // 가로축 정렬
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width /
                        2, // 스크린 사이즈에 맞춰서(반응형)
                    height: 200,
                    color: Colors.blue,
                    // margin: const EdgeInsets.only(top: 50, left: 50),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                    color: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                    color: Colors.green,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                    color: Colors.purple,
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => print("Text Button clicked"),
                  child: const Text("Text Button"),
                ),
                GestureDetector(
                  onTap: () => print("GestureDetector used"),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("clicked"),
        child: const Icon(Icons.mouse),
      ),
    );
  }
}
