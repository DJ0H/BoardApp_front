import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Table Grid Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Table Grid Example'),
        ),
        body: MyTableGrid(),
      ),
    );
  }
}

class MyTableGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Age')),
        DataColumn(label: Text('Gender')),
      ],
      rows: <DataRow>[
        DataRow(cells: <DataCell>[
          DataCell(Text('John')),
          DataCell(Text('30')),
          DataCell(Text('Male')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('Anna')),
          DataCell(Text('25')),
          DataCell(Text('Female')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('Mike')),
          DataCell(Text('40')),
          DataCell(Text('Male')),
        ]),
      ],
    );
  }
}
