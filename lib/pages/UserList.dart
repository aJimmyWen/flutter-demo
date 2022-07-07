import 'package:flutter/material.dart';
import '../helpers/TableData.dart';

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 10,
      headingRowColor: MaterialStateProperty.all(Colors.amber[300]),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      columns: const [
        DataColumn(label: Text('Name')),
      ],
      rows: [
        ...playerList.map((player) => DataRow(
              cells: [
                DataCell(Text(
                  player.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ))
      ],
    );
  }
}

class ScrollableColumnWidget extends StatelessWidget {
  const ScrollableColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            headingRowColor: MaterialStateProperty.all(Colors.amber[100]),
            columnSpacing: 40,
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            columns: const [
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('Gender')),
              DataColumn(label: Text('Points')),
              DataColumn(label: Text('Won')),
              DataColumn(label: Text('Lose')),
            ],
            rows: [
              ...playerList.map((player) => DataRow(
                    cells: [
                      DataCell(Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            player.age.toString(),
                          ))),
                      DataCell(Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            player.gender == Gender.male ? 'M' : 'F',
                          ))),
                      DataCell(Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            player.points.toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ))),
                      DataCell(Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(player.won.toString()))),
                      DataCell(Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(player.lose.toString()))),
                    ],
                  ))
            ]),
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Row(
            children: const [
              FixedColumnWidget(),
              ScrollableColumnWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
