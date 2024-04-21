import 'package:flutter/material.dart';

// 리스트뷰
class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  final postList = [
    {
      "title": "Sample Title 1",
      "color": Colors.green,
    },
    {
      "title": "Sample Title 2",
      "color": Colors.redAccent,
    },
    {
      "title": "Sample Title 3",
      "color": Colors.amber,
    },
    {
      "title": "Sample Title 4",
      "color": Colors.purpleAccent,
    },
    {
      "title": "Sample Title 5",
      "color": Colors.teal,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            title: postList[index]["title"] as String, // 객체 타입 명시
            colorData: postList[index]["color"] as Color,
          );
        },
      ),
      // ListView(
      //   scrollDirection: Axis.horizontal, // 가로 스크롤 기본은 Axis.vertical(세로)
      //   children: [
      //     postContainer(title: "Title 1", colorData: Colors.yellow),
      //     postContainer(title: "Title 2", colorData: Colors.red),
      //     postContainer(title: "Title 3"),
      //     postContainer(title: "Title 4"),
      //     postContainer(title: "Title 5"),
      //   ],
      // ),
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.blue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: colorData,
        ),
      ],
    );
  }
}
