import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    final postList = [
      {
        "number": "1",
        "color": Colors.redAccent,
      },
      {
        "number": "2",
        "color": Colors.yellow,
      },
      {
        "number": "3",
        "color": Colors.lightBlue,
      },
      {
        "number": "4",
        "color": Colors.grey,
      },
      {
        "number": "5",
        "color": Colors.deepPurple,
      },
      {
        "number": "6",
        "color": Colors.amber,
      },
      {
        "number": "7",
        "color": Colors.blueAccent,
      },
      {
        "number": "8",
        "color": Colors.orangeAccent,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //레이아웃 컨트롤
          crossAxisCount: 2, // 가로축 두 줄
          crossAxisSpacing: 15.0, // 열의 공간
          mainAxisSpacing: 12.0,
        ),
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            number: postList[index]["number"] as String,
            colorData: postList[index]["color"] as Color,
          );
        },
        // children: [
        // postContainer(number: "1", colorData: Colors.amber),
        // postContainer(number: "2", colorData: Colors.greenAccent),
        // postContainer(number: "3", colorData: Colors.blueAccent),
        // postContainer(number: "4", colorData: Colors.redAccent),
        // ],
      ),
    );
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      // padding: EdgeInsets.all(20),
      child: Center(child: Text("Box $number")),
    );
  }
}
