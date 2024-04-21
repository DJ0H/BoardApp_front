import 'package:board_project/widget/alert.dart';
import 'package:board_project/widget/align.dart';
import 'package:board_project/widget/button.dart';
import 'package:board_project/widget/flexible.dart';
import 'package:board_project/widget/gradation.dart';
import 'package:board_project/widget/gridview.dart';
import 'package:board_project/widget/listview.dart';
import 'package:board_project/widget/navigator.dart';
import 'package:board_project/widget/scroll.dart';
import 'package:board_project/widget/image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// wrap 단축키 alt + enter
// 정렬 단축키 ctl + alr + L
// MediaQuery.of(context).size.width <- 반응형 사이즈

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigatorWidget(),
    );
  }
}
