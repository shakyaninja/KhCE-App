import 'package:flutter/material.dart';

class Fee extends StatelessWidget {
  double iconSize = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 53, 92, 1),
        title: Text('Fee Structures'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Fee Structures',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Table(
              border: TableBorder.all(style: BorderStyle.solid),
              columnWidths: {
                0: FractionColumnWidth(.25),
                1: FractionColumnWidth(.15),
                2: FractionColumnWidth(.4),
                3: FractionColumnWidth(.2)
              },
              children: [
                TableRow(children: [
                  Column(children: [Text('Program')]),
                  Column(children: [Text('Duration')]),
                  Column(children: [Text('Enrollment Capacity')]),
                  Column(
                    children: <Widget>[
                      Text('Total Fee'),
                    ],
                  )
                ]),
                TableRow(children: [
                  Column(children: [Text('BE Civil')]),
                  Column(children: [Text('4 yrs')]),
                  Column(children: [Text('96')]),
                  Column(
                    children: <Widget>[
                      Text('6,63,000'),
                    ],
                  )
                ]),
                TableRow(children: [
                  Column(children: [Text('BE Electrical')]),
                  Column(children: [Text('4 yrs')]),
                  Column(children: [Text('48')]),
                  Column(
                    children: <Widget>[
                      Text('6,43,000'),
                    ],
                  )
                ]),
                TableRow(children: [
                  Column(children: [Text('BE Computer')]),
                  Column(children: [Text('4 yrs')]),
                  Column(children: [Text('48')]),
                  Column(
                    children: <Widget>[
                      Text('6,43,000'),
                    ],
                  )
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
